from flask import Flask, request, render_template, redirect, session, flash
from flask_debugtoolbar import DebugToolbarExtension
from models import connect_db, db, User, Feedback
from forms import RegisterForm, LoginForm
from sqlalchemy.exc import IntegrityError

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql:///feedback'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SQLALCHEMY_ECHO'] = True
app.config['SECRET_KEY'] = 'aaaewrnmcxio12'

connect_db(app)
db.create_all()


@app.route('/')
def home_page():
    if 'user_id' not in session:
        return redirect('/login')
    username = session['user_id']
    return redirect(f'/users/{username}')


@app.route('/register', methods=['GET', 'POST'])
def register_user():
    form = RegisterForm()
    if form.validate_on_submit():
        username = form.username.data
        password = form.password.data
        email = form.email.data
        first_name = form.first_name.data
        last_name = form.last_name.data
        new_user = User.register(
            username, password, email, first_name, last_name)
        db.session.add(new_user)
        try:
            db.session.commit()
        except IntegrityError:
            form.username.errors.append('Username taken.  Pelase pick another')
            return render_template('users/register.html', form=form)
        session['user_id'] = new_user.username
        return redirect(f'/users/{new_user.username}')
    return render_template('users/register.html', form=form)


@app.route('/login', methods=['GET', 'POST'])
def login_user():
    form = LoginForm()
    if form.validate_on_submit():
        username = form.username.data
        password = form.password.data
        user = User.authenticate(username, password)
        if user:
            session['user_id'] = user.username
            return redirect(f'/users/{user.username}')
        else:
            form.username.errors = ['Invalid username/password.']

    return render_template('users/login.html', form=form)


@app.route('/users/<username>')
def show_user(username):
    if 'user_id' not in session:
        return redirect('/login')
    user = User.query.get_or_404(username)
    return render_template('users/show.html', user=user)


@app.route('/logout')
def logout_user():
    session.pop('user_id')
    return redirect('/')
