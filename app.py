from flask import Flask, request, render_template, session, flask_sqlalchemy
from flask_debugtoolbar import DebugToolbarExtension
from models import connect_db, db, User

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgres:///feedback'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SQLALCHEMY_ECHO'] = True
app.config['SECRET_KEY'] = 'aaaewrnmcxio12'

connect_db(app)
db.create_all()

@app.route('/')
def index_page():
  return render_template('index.html')

