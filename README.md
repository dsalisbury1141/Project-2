# Work in Progress this page is not yet completed :-) 
## Women in STEM (Science, Technology, Engineering and Math)
Heroku publish https://project-2-stem-demographics.herokuapp.com/
<img align="center" src="https://github.com/dsalisbury1141/Project-2/blob/master/Dawn/Images/Dash1.PNG" width="1000">
# Project-2 Women in STEM
This Project-2 includes Python Flask–powered RESTful API, website
<h2>Created By</h2>
<li>Brynn Hamilton</li>
<li>Christine Hemphill</li>
<li>Christina Suckow</li>
<li>Dawn Salisbury</li>

## Women in STEM (Science, Technology, Engineering and Math)
Heroku publish https://project-2-stem-demographics.herokuapp.com/
<img align="center" src="https://github.com/dsalisbury1141/Project-2/blob/master/Dawn/Images/Dash1.PNG" width="1000">
# Did you know? 
•	Women own less than 10% of startups in the world.
•	Women in the technology industry earn 29% less than their male counterparts.
•	3 out of 4 young girls express an interest in computer science.
•	Statistics show that 1 out of 4 jobs are held by women in the IT indisutry in 2019.
•	In the last 40 years, almost 90% of all information technology licenses were made by male-only teams. Less than 2% of tech teams include women.
•	20% of engineering graduates are women and only 11% of working engineers are women.
•	Netflix is one of the companies that really work on gender equality and show that 47% of the employees are women.
   - Credit: https://leftronic.com/women-in-technology-statistics/

# Data Munging and Cleaning 
  •	Cleaned Data Set, changed format from tab delimiter to comma delimiter
  •	Accounted for null, Removed white space
  •	Cleaned CSV
Focused on gender disparity only (male vs. female)
Removed race to control scope
Normalized date format (alternated between month and year vs. only year)
Removed Type: Country to avoid data skewing

# Getting Intimate With Our Data
• Begin to review the data with Pandas
• Two seperate data sources
  - STEM Employee Demographics
  - STEM College Major Demographics
• Sorting and plotting data to build a our story
<img align="center" src="https://Link here" width="1000">
<img align="center" src="https://Link here" width="1000">


# Implimentation The Process of Coding and Creating Our Website
We all learned a lot obout deploying  a Flask_powered Restful API to be hosten on Heroku 

Why SQLite instead of Postgresql? 
• Simplicity of SQLite 
    Database built into python and doesn’t require additional packages
    Only needs the .db file
    Self-contained within Flask application and does not require a separate service.
    Simplifies the process for pulling information or adding updates. 
    Works best with smaller data sets
• Python script that creates the tables & loads the data
    More convenient for collaboration
    Ease of access for sharing updates (sharing a file)
    Doesn’t require creating a new script
• Hosting on heroku
    Doesn’t require pushing updates to a new server
• Flask API & Endpoints 
<img align="center" src="https://Link here" width="1000">

# Building the Dashboard
• Created 3 interactive visualizations using Plotly.js
• Created 3 dropdowns
    Year
    Company and Company Category
    Dropdowns update all 3 charts in real time (if data is available)
    Company dropdown updates and defaults to “All” when Company Category changes
• Layered donut chart
    Outer subplot for company totals
    Inner subplot for gender comparison
• Grouped bar charts
Visual comparison between genders at each company
Display comparisons for a specific company across all years available


# Data sources 
	https://github.com/fivethirtyeight/data/tree/master/college-majors
	https://github.com/fivethirtyeight/data/blob/master/college-majors/women-stem.csv



