## Project 2 Women in STEM (Science, Technology, Engineering and Math)
Heroku publish https://project-2-stem-demographics.herokuapp.com/
<img align="center" src="https://github.com/dsalisbury1141/Project-2/blob/master/Dawn/Images/Dash1.PNG" width="1000">
<h2>Created By</h2>
<h5>Brynn Hamilton</h5>
<h5>Christina Suckow</h5>
<h5>Dawn Salisbury</h5>

# Did you know? 
<li>Rapid growth in future years</li>
<li>The gender gap of females to male is worldwide</li>
<li>Women face a stereotype of what is considered to be women’s work</li>
<li>Men make up the majority of students in STEM majors in college</li>
<li>Women who pursue a career in technology face the challenge of a male dominated workforce</li>
<li>Women in the field don’t have many other female role models</li>
<li>Among working parents, women leave their positions at a higher rate than men</li>
<li>Women as board members only represent 18% in 2019 up from 15%</li>
<li>Worldwide, women only represent 16% of positions in management</li>
<li>The typical STEM worker earns ⅔ more than someone in another field</li>
<li>Women own less than 10% of startups in the world</li>
<li>Women in the technology industry earn 29% less than their male counterparts</li>
<li>3 out of 4 young girls express an interest in computer science</li>
<li>Statistics show that 1 out of 4 jobs are held by women in the IT indisutry in 2019</li>
<li>In the last 40 years, almost 90% of all information technology licenses were made by male-only teams. Less than 2% of tech teams include women</li>
<li>20% of engineering graduates are women and only 11% of working engineers are women</li>
<li>Netflix is one of the companies that really work on gender equality and show that 47% of the employees are women</li>
   - Credit: https://leftronic.com/women-in-technology-statistics/

# Data Munging and Cleaning 
<h5>Cleaned Data Set, changed format from tab delimiter to comma delimiter</h5>
<li>Accounted for null, Removed white space</li>
<h5>Cleaned CSV</h5>
<li>Focused on gender disparity only (male vs. female)</li>
<li>Removed race to control scope</li>
<li>Normalized date format (alternated between month and year vs. only year)</li>
<li>Removed Type: Country to avoid data skewing</li>

# Getting Intimate With Our Data
<li>Begin to review the data with Pandas</li>
<li>Two seperate data sources
  - STEM Employee Demographics
  - STEM College Major Demographics
<li>Sorting and plotting data to build a our story<li>
<img align="center" src="https://github.com/dsalisbury1141/Project-2/blob/master/Dawn/Images/plot1.PNG" width="600">

# Implimentation The Process of Coding and Creating Our Website
<h5>We all learned a lot about deploying a Flask_powered Restful API to be hosted on Heroku</h5>

## Why SQLite instead of Postgresql?</h5>
<li>Simplicity of SQLite </li>
    Database built into python and doesn’t require additional packages
    Only needs the .db file
    Self-contained within Flask application and does not require a separate service.
    Simplifies the process for pulling information or adding updates. 
    Works best with smaller data sets
<li>Python script that creates the tables & loads the data</li>
    More convenient for collaboration
    Ease of access for sharing updates (sharing a file)
    Doesn’t require creating a new script
<li>Hosting on heroku</li>
    Doesn’t require pushing updates to a new server
<li>Flask API & Endpoints</li>
<img align="center" src="https://github.com/dsalisbury1141/Project-2/blob/master/Dawn/Images/Flask-enpoint.PNG" width="1000">

# Building the Dashboard
<li>Created 3 interactive visualizations using Plotly.js</li>
<li>Created 3 dropdowns</li>
    Year, Company, and Business Category
    Dropdowns update all 3 charts in real time (if data is available)
    Company dropdown updates and defaults to “All” when Company Category changes
<li>Layered donut chart</li>
    Outer subplot for company totals
    Inner subplot for gender comparison
<li>Grouped bar charts</li>
    Visual comparison between genders at each company
    Display comparisons for a specific company across all years available
<li>Navigation bar linking to the Filter table</li> 
<img align="center" src="https://github.com/dsalisbury1141/Project-2/blob/master/Dawn/Images/table.png" width="1000">

# Closing The Gap
<img align="center" src="https://github.com/dsalisbury1141/Project-2/blob/master/Dawn/Images/Closing-gap.PNG" width="1000">
<li>There are many resources out there to learn more about this topic we will include just a few links to help your journey to gain knowledge on this topic</li>
<li>There are also many many options to gain education in the STEM industry, there are paid collecges, bootcamps and online sources, some online sources are low cost or free.
Like you tube, Udemy, linkedin and many others..  </li>


# Data sources 
	https://github.com/fivethirtyeight/data/tree/master/college-majors
	https://github.com/fivethirtyeight/data/blob/master/college-majors/women-stem.csv



