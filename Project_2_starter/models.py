from app import db

class Stem_Employee_Demographics(db.Model):
    __tablename__ = 'Stem_Employee_Demographics'

    Date = db.Column(db.Integer, primary_key = True)
    Type = db.Column(db.Text, primary_key = True)
    Company = db.Column(db.Text, primary_key = True)
    Female = db.Column(db.Float, primary_key = True)
    Male = db.Column(db.Float, primary_key = True)
    White = db.Column(db.Float, primary_key = True)
    Asian = db.Column(db.Float, primary_key = True)
    Latino = db.Column(db.Float, primary_key = True)
    Black = db.Column(db.Float, primary_key = True)
    Multi = db.Column(db.Float, primary_key = True)
    Other = db.Column(db.Float, primary_key = True)
    Undeclared = db.Column(db.Float, primary_key = True)

    def __init__(self, Date, Type, Company, Female, Male, White, Asian, Latino, Black, Multi, Other, Undeclared):
        self.Date = Date
        self.Type = Type
        self.Company = Company
        self.Female = Female
        self.Male = Male
        self.White = White
        self.Asian = Asian
        self.Latino = Latino
        self.Black = Black
        self.Multi = Multi
        self.Other = Other
        self.Undeclared = Undeclared

    def __repr__(self):
        return '<Stem Employee Demographics {}>'.format(self.breed)

    def serialize(self):
        return {
            'Date':self.Date,
            'Type':self.Type,
            'Company':self.Company,
            'Female':self.Female,
            'Male':self.Male,
            'White':self.White,
            'Asian':self.Asian,
            'Latino':self.Latino,
            'Black':self.Black,
            'Multi':self.Multi,
            'Other':self.Other,
            'Undeclared':self.Undeclared
        }

class Stem_Major_Demographics(db.Model):
    __tablename__ = 'Stem_Major_Demographics'

    Rank = db.Column(db.Integer, primary_key = True)
    Major_code = db.Column(db.Integer)
    Major = db.Column(db.Text)
    Major_category = db.Column(db.Text)
    Total = db.Column(db.Integer)
    Men = db.Column(db.Integer)
    Women = db.Column(db.Integer)
    ShareWomen = db.Column(db.Float)
    Median = db.Column(db.Integer)

    def __init__(self, Rank, Major_code, Major, Major_category, Total, Men, Women, ShareWomen, Median):
        self.Rank = Rank
        self.Major_code = Major_code
        self.Major = Major
        self.Major_category = Major_category
        self.Total = Total
        self.Men = Men
        self.Women = Women
        self.ShareWomen = ShareWomen
        self.Median = Median

    def __repr__(self):
        return '<Stem Major Demographics {}>'.format(self.breed)

    def serialize(self):
        return {
            'Rank':self.Rank,
            'Major_code':self.Major_code,
            'Major':self.Major,
            'Major_category':self.Major_category,
            'Total':self.Total,
            'Men':self.Men,
            'Women':self.Women,
            'ShareWomen':self.ShareWomen,
            'Median':self.Median
        }