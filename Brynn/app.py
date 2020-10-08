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

@app.route("/employee_demographics/years")
def employee_years():
    try:
        years = Stem_Employee_Demographics.query.with_entities(Stem_Employee_Demographics.Date).distinct().order_by(Stem_Employee_Demographics.Date)
        y = []
        for x in years:
            y.append(x[0])
        return jsonify(y)
    except Exception as e:
        return(str(e))

@app.route("/employee_demographics/years/<year_>")
def employees_by_year(year_):
    try:
        employees = Stem_Employee_Demographics.query.filter(Stem_Employee_Demographics.Date == year_).all()
        return jsonify([x.serialize() for x in employees])
    except Exception as e:
        return(str(e))

@app.route("/employee_demographics/types")
def employee_types():
    try:
        types = Stem_Employee_Demographics.query.with_entities(Stem_Employee_Demographics.Type).distinct().order_by(Stem_Employee_Demographics.Type)
        t = []
        for x in types:
            t.append(x[0])
        return jsonify(t)
    except Exception as e:
        return(str(e))

@app.route("/employee_demographics/types/<type_>")
def employees_by_type(type_):
    try:
        employees = Stem_Employee_Demographics.query.filter(func.upper(Stem_Employee_Demographics.Type) == func.upper(type_)).all()
        return jsonify([x.serialize() for x in employees])
    except Exception as e:
        return(str(e))

@app.route("/employee_demographics/companies")
def employee_companies():
    try:
        companies = Stem_Employee_Demographics.query.with_entities(Stem_Employee_Demographics.Company).distinct().order_by(Stem_Employee_Demographics.Company)
        c = []
        for x in companies:
            c.append(x[0])
        return jsonify(c)
    except Exception as e:
        return(str(e))

@app.route("/employee_demographics/companies/<company_>")
def employees_by_company(company_):
    try:
        employees = Stem_Employee_Demographics.query.filter(func.upper(Stem_Employee_Demographics.Company) == func.upper(company_)).all()
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

@app.route("/major_demographics/categories")
def major_categories():
    try:
        cat = Stem_Major_Demographics.query.with_entities(Stem_Major_Demographics.Major_category).distinct().order_by(Stem_Major_Demographics.Major_category)
        c = []
        for x in cat:
            c.append(x[0])
        return jsonify(c)
    except Exception as e:
        return(str(e))

@app.route("/major_demographics/categories/<category_>")
def majors_by_category(category_):
    try:
        majors = Stem_Major_Demographics.query.filter(func.upper(Stem_Major_Demographics.Major_category) == func.upper(category_)).all()
        return jsonify([x.serialize() for x in majors])
    except Exception as e:
        return(str(e))

@app.route("//major_demographics/majors")
def major_majors():
    try:
        major = Stem_Major_Demographics.query.with_entities(Stem_Major_Demographics.Major).distinct().order_by(Stem_Major_Demographics.Major)
        m = []
        for x in major:
            m.append(x[0])
        return jsonify(m)
    except Exception as e:
        return(str(e))

@app.route("/major_demographics/majors/<major_>")
def majors_by_major(major_):
    try:
        majors = Stem_Major_Demographics.query.filter(func.upper(Stem_Major_Demographics.Major) == func.upper(major_)).all()
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