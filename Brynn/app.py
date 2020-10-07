from flask import Flask, request, jsonify, render_template
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import func
import os

app = Flask(__name__)

app.config.from_object(os.environ['APP_SETTINGS'])
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

from models import Stem_Employee_Demographics, Stem_Major_Demographics, Demographic_Totals

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/employee_demographics")
def employees():
    try:
        employees = Stem_Employee_Demographics.query.all()
        return jsonify([x.serialize() for x in employees])
    except Exception as e:
        return(str(e))

@app.route("/employee_demographics/<year_>")
def employees_by_year(year_):
    try:
        employees = Stem_Employee_Demographics.query.filter(Stem_Employee_Demographics.Date == year_).all()
        return jsonify([x.serialize() for x in employees])
    except Exception as e:
        return(str(e))

@app.route("/employee_demographic_years")
def employee_years():
    try:
        years = Stem_Employee_Demographics.query.with_entities(Stem_Employee_Demographics.Date).distinct().order_by(Stem_Employee_Demographics.Date)
        y = []
        for x in years:
            y.append(x[0])
        return jsonify(y)
    except Exception as e:
        return(str(e))

@app.route("/major_demographics")
def majors():
    try:
        majors = Stem_Major_Demographics.query.all()
        return jsonify([x.serialize() for x in majors])
    except Exception as e:
        return(str(e))

@app.route("/totals")
def totals():
    try:
        totals = Demographic_Totals.query.all()
        retVal = "["
        for t in totals:
            retVal += t.Type + ": { " + t.toString() + " }, "
        retVal = retVal[:-2]
        retVal += "]"
        return jsonify(retVal)
    except Exception as e:
        return(str(e))