# Exercise_2_power_supply


## In virtual envs you need at leat following libraries:

$ pip list
Package        Version
-------------- -------
click          8.1.3
colorama       0.4.4
Flask          2.1.2
Flask-HTTPAuth 4.6.0
itsdangerous   2.1.2
Jinja2         3.1.2
MarkupSafe     2.1.1
pip            22.0.4
setuptools     62.1.0
Werkzeug       2.1.2
wheel          0.37.1
(virtual1)

and globally:
docutils       0.18.1

## Commands to start the virtual server and client
Check libraries with: pip list
Among others at least: requests, Flask, Flask-HTTPAuth, werkzeug (could be also globally in-stalled)
Pip install flask
pip install flask-HTTPAuth


window_2 Flask server

source virenvs/virtual1/Scripts/activate
cd exercise2/ex2/kyttala
export FLASK_APP=rps_kyttala.py
flask run

(open on ignonito window)

window_1

source virenvs/virtual1/Scripts/activate
cd exercise2/ex2/kyttala
robot rf_kyttala.robot
