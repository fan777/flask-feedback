from app import db
from models import User, Feedback

db.drop_all()
db.create_all()

u1 = User.register('test', 'password', 'test@test.com', 'first', 'last')
u2 = User.register('cfan', 'password', 'cfan@test.com', 'charlie', 'fan')
u3 = User.register('jen', 'password', 'jen@test.com', 'jennifer', 'fan')
u4 = User.register('jerry', 'password', 'jerry@test.com', 'jerry', 'fan')
f1 = Feedback(title='title1', content='content1', username='test')
f2 = Feedback(title='title2', content='content2', username='test')
f3 = Feedback(title='title3', content='content3', username='test')
f4 = Feedback(title='title of feedback',
              content='content is king', username='cfan')

db.session.add_all([u1, u2, u3, u4])
db.session.commit()
db.session.add_all([f1, f2, f3, f4])
db.session.commit()
