# todoapp-flask [![Circle CI](https://circleci.com/gh/samycici/todoapp-flask.svg?style=shield)](https://circleci.com/gh/samycici/todoapp-flask) [![Code Climate](https://codeclimate.com/github/samycici/todoapp-flask.png)](https://codeclimate.com/github/samycici/todoapp-flask) [![Test Coverage](https://codeclimate.com/github/samycici/todoapp-flask/badges/coverage.svg)](https://codeclimate.com/github/samycici/todoapp-flask/coverage) [![Issue Count](https://codeclimate.com/github/samycici/todoapp-flask/badges/issue_count.svg)](https://codeclimate.com/github/samycici/todoapp-flask)


Virtualenv
------------

To create virtualenv (Python 2.7):

```python
virtualenv todoapp_flask_env
```

To activate virtualenv:

```
source todoapp_flask_env/bin/activate
```

To install requirements:

```python
pip install -r requirements.txt
```

Docker Containers
------------

To init a PostgreSQL database container for the project:

```docker run -d --name postgresql -e 'DB_USER=admin' -e 'DB_PASS=admin' -e 'DB_NAME=todo' -p 5432:5432 sameersbn/postgresql:9.4-4```

To run a container for the application:

```docker build -t todoapp .```

```docker run -d -p 5000:5000 --link postgresql:postgres --name todo todoapp```

Or, with docker-compose:

```docker-compose up```
