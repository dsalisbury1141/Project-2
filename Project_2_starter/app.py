from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import func
import os

app = Flask(__name__)

app.config.from_object(os.environ['APP_SETTINGS'])
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

from models import Stem_Employee_Demographics, Stem_Major_Demographics

@app.route("/")
def home():
    return ("Project 2")

@app.route("/employee_demographics")
def employees():
    try:
        employees = Stem_Employee_Demographics.query.all()
        return jsonify([x.serialize() for x in employees])
    except Exception as e:
        return(str(e))

@app.route("/major_demographics")
def majors():
    try:
        majors = Stem_Major_Demographics.query.all()
        return jsonify([x.serialize() for x in majors])
    except Exception as e:
        return(str(e))
