from flask import Flask, request, render_template, redirect, session, flash
from flask_debugtoolbar import DebugToolbarExtension
from models import connect_db, db, User, Feedback
from forms import RegisterForm, LoginForm, FeedbackForm
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
    if 'user_id' in session:
        return redirect(f"/users/{session['user_id']}")
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


@app.route('/users/<username>/delete', methods=['GET', 'POST'])
def delete_user(username):
    if 'user_id' not in session or username != session['user_id']:
        return redirect('/login')

    user = User.query.get_or_404(username)
    db.session.delete(user)
    db.session.commit()
    session.pop('user_id')
    return redirect('/login')


@app.route('/users/<username>/feedback/add', methods=['GET', 'POST'])
def add_feedback(username):
    if 'user_id' not in session:
        return redirect('/')
    form = FeedbackForm()
    if form.validate_on_submit():
        title = form.title.data
        content = form.content.data
        new_feedback = Feedback(
            title=title, content=content, username=username)
        db.session.add(new_feedback)
        db.session.commit()
        return redirect(f'/users/{username}')
    return render_template('feedback/add.html', form=form)


@app.route('/feedback/<id>/update', methods=['GET', 'POST'])
def update_feedback(id):
    if 'user_id' not in session:
        return redirect('/')
    feedback = Feedback.query.get_or_404(id)
    form = FeedbackForm(obj=feedback)
    if form.validate_on_submit():
        feedback.title = form.title.data
        feedback.content = form.content.data
        db.session.commit()
        return redirect(f'/users/{feedback.username}')
    return render_template('feedback/add.html', form=form, feedback=feedback)


@app.route('/feedback/<id>/delete', methods=['POST'])
def delete_feedback(id):
    feedback = Feedback.query.get_or_404(id)
    if 'user_id' not in session or feedback.username != session['user_id']:
        return redirect('/login')
    db.session.delete(feedback)
    db.session.commit()
    return redirect('/')


@app.route('/logout')
def logout_user():
    session.pop('user_id')
    return redirect('/')
