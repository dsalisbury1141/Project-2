import sqlite3 as sl
import csv

con = sl.connect("StemDemographics.db")
with con as c:
    c.execute("""
        CREATE TABLE Stem_Employee_Demographics (
            Date INTEGER NOT NULL,
            Type TEXT,
            Company TEXT,
            Female FLOAT,
            Male FLOAT
        );
    """)
    c.execute("""
        CREATE TABLE Stem_Major_Demographics (
            Rank INTEGER NOT NULL PRIMARY KEY,
            Major_code INTEGER,
            Major TEXT,
            Major_category TEXT,
            Total INTEGER,
            Men INTEGER,
            Women INTEGER,
            ShareWomen FLOAT,
            Median INTEGER
        );
    """)
    c.execute("""
        CREATE TABLE Demographic_Totals (
            Type TEXT NOT NULL PRIMARY KEY,
            Men INT,
            Women INT
        );
    """)

    with open('employee_diversity.csv','r') as f:
        dr = csv.DictReader(f)
        to_db = [(i['Date'], i['Type'], i['Company'], i['Female'], i['Male']) for i in dr]
    
    c.executemany("INSERT INTO Stem_Employee_Demographics (Date, Type, Company, Female, Male) VALUES (?, ?, ?, ?, ?);", to_db)

    with open('student_diversity.csv','r') as f2:
        dr2 = csv.DictReader(f2)
        to_db_2 = [(i['Rank'], i['Major_code'], i['Major'], i['Major_category'], i['Total'], i['Men'], i['Women'], i['ShareWomen'], i['Median']) for i in dr2]

    c.executemany("INSERT INTO Stem_Major_Demographics (Rank, Major_code, Major, Major_category, Total, Men, Women, ShareWomen, Median) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);", to_db_2)

    vals = [['bio', 71822, 113941], ['computers', 156333, 131567], ['engineering', 408021, 312985], ['health', 186009, 328049], ['sciences', 148616, 79480], ['total', 972858, 966304]]
    c.executemany("INSERT INTO Demographic_Totals (Type, Men, Women) VALUES (?, ?, ?);", vals)
