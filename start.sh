#!/bin/bash
cd todoapp-flask
python manage.py db init
python manage.py db migrate
python manage.py db upgrade
nohup python todoapp/apps.py &
nohup python todoapp/api.py &
