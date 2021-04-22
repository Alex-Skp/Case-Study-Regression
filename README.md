![Case study Regression Image](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/project+banners/real-state-project.jpg)

# Case Study: Regression

## Introduction:
This is the mid bootcamp project for Ironhack,
by Alexandre Sommerkamp. 

**Background:**  
You are working as an analyst for a real estate company. Your company wants to build a machine learning model to predict the selling prices of houses based on a variety of features on which the value of the house is evaluated.

**Objective:**  
The task is to build a model that will predict the price of a house based on features provided in the dataset. The senior management also wants to explore the characteristics of the houses using some business intelligence tool. One of those parameters include understanding which factors are responsible for higher property value - \$650K and above.

**Approach**
In order to deliver the expected results, we started working with the database and dropping the data into Tableau, a business intelligence tool that allows to very quickly create visualizations to gain insight, and then develop interactive dashboards that help gain deep insight into the data. Very quickly we could start taking conclusions over what characterizes which properties were being valued over $650k and above:
For properties over 650k:
* Having a grading of 9+ (look into grading of houses)
* Condition will increase the value, but it it'
* having at least 3-4 bedrooms 
* having at least 3 bathrooms
* having view helps a lot, but it is not so important
* waterfront will increase the value noticeably
* new (2010+) or btw 1900 and 1940




To do: 

Make a map of areas with more than 650000 price and save the zipcodes ( SQL query)

make a fake Xtest with these conditions randomized and test against the model to see if these conditions would yield houses of over 650k of value 

King county real estate grading:

BUILDING GRADE
Represents the construction quality of improvements. Grades run from grade 1 to 13. Generally defined as:

1-3 Falls short of minimum building standards. Normally cabin or inferior structure.

4 Generally older, low quality construction. Does not meet code.

5 Low construction costs and workmanship. Small, simple design.

6 Lowest grade currently meeting building code. Low quality materials and simple designs.

7 Average grade of construction and design. Commonly seen in plats and older sub-divisions.

8 Just above average in construction and design. Usually better materials in both the exterior and interior finish work.

9 Better architectural design with extra interior and exterior design and quality.

10 Homes of this quality generally have high quality features. Finish work is better and more design quality is seen in the floor plans. Generally have a larger square footage.

11 Custom design and higher quality finish work with added amenities of solid woods, bathroom fixtures and more luxurious options.

12 Custom design and excellent builders. All materials are of the highest quality and all conveniences are present.

13 Generally custom designed and built. Mansion level. Large amount of highest quality cabinet work, wood trim, marble, entry ways etc. 




## Conclusions:


## Methodology:
**Preparation**
* Created a Trello board with the steps, further research, and a breakdown of the tasks.
* Created a [github repository](https://github.com/Alex-Skp/Case-Study-Regression).
* Made sure all packages were installed in my conda environment.

**SQL**
* Started with SQL in order to gain insight in the data before start working with it on python, and taking that part out of the way, as in this project we will not be linking our SQL server to python, and will import the file as a CSV directly.  
* [Check the script](https://github.com/Alex-Skp/Case-Study-Regression/blob/main/sql/sql-exercises.sql).

**Python**:
* Created a function in order apply the model and log test data, in order to afterwards check which steps contributed to a better scores, and which ones were detrimental.
* Made an initial import, with a basic cleaning of the data, to further export, and use in tableau [here](https://github.com/Alex-Skp/Case-Study-Regression/blob/main/tableau/Seattle%20Property%20Sale%20Data%20Workbook.twbx).
* Choosing models to apply. We will start with linear regression, and later explore polinomial regression, as well as decision trees.
* Pre-Processing Initially we will use Standardizer for numerical variables, and OneHotEncoder for categorical, exploring further with logarithmic normalization of scales, and other methods. 
*Made an initial run of the regression model without much wrangling, to have a baseline measure of how the model is fitting the data, then we iterate the process every step we make in the wrangling, to gain a better insignt on what is helping or perjudicating the model. 


**Tableau**
* Imported a csv file from the python code, after it was reviewed there for spelling or input errors
* Went through the questions suggested and plotted the answers to these questions, evaluating the data further.
* Detected certain anomalies while plotting that will be removed back in the python code, hoping to improve the ML models. 
* Created a [dashboard](https://public.tableau.com/profile/alex2690#!/vizhome/SeattlePropertySaleDataWorkbook/HowarepropertiesbuiltinSeattle) which shows characteristics from properties built in Seattle based on a property sales dataset of 2016.
* Tested the dashboard with a third person foreign to the project, to see if the points shown in the dashboard get through and are easy to understand. 
* Uploaded the whole workbook in Tableau public, then downloaded the file and uploaded [in this repository](https://github.com/Alex-Skp/Case-Study-Regression/tree/main/tableau)). 


**Presentation**  
* Will work with Google Slides. Will present the logging tool created for python, and will plot the progress over the iterations of the wrangling process quickly. Afterwards will present the findings from Tableau plots, as well as the final dashboard

MAKE THE CALCULATED COLUMN FOR OVER/UNDER AVERAGE 65000k dollars 

**Documentation**  
* Used Notepad++ to update the readme files of the repository, while working, and after a working session, and uploaded them together with the commits. Explored further with hyperlinking in Markdown, as well as integrating images in the files. 


**Deliverables:**   

*  [Readme.md](https://github.com/Alex-Skp/Case-Study-Regression/blob/main/README.md)
 - This markdown will explain the data analysis workflow including the problem statement/ business the objective, data extraction, data wrangling, etc. Here you should explain the business analytic approach you used to solve the problem. Please be detailed in explaining the steps you followed. It is important to keep in mind that the document is written for the readers, who may or may not have the technical expertise with Python/SQL/Tableau.
*  [Python File]
 - It can be either uploaded as a `.ipynb` file (Jupyter notebook) or `.py` file. The Python code should be well documented with comments, explaining the code, EDA operations, logic used - especially with data cleaning operations, and any assumptions followed in the model.
* [Datasets](https://github.com/Alex-Skp/Case-Study-Regression/tree/main/data)
*  Tableau workbook:  
	[See in tableau](https://public.tableau.com/profile/alex2690#!/vizhome/SeattlePropertySaleDataWorkbook/HowarepropertiesbuiltinSeattle) | [Go to files](https://github.com/Alex-Skp/Case-Study-Regression/tree/main/tableau)
* [File containing SQL queries](https://github.com/Alex-Skp/Case-Study-Regression/tree/main/sql)
* Final presentation??