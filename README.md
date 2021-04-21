![Case study Regression Image](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/project+banners/real-state-project.jpg)

# Case Study: Regression

## Introduction:
This is the mid bootcamp project for Ironhack, developed by Alexandre Sommerkamp. 

**Background:**  
You are working as an analyst for a real estate company. Your company wants to build a machine learning model to predict the selling prices of houses based on a variety of features on which the value of the house is evaluated.

**Objective:**  
The task is to build a model that will predict the price of a house based on features provided in the dataset. The senior management also wants to explore the characteristics of the houses using some business intelligence tool. One of those parameters include understanding which factors are responsible for higher property value - \$650K and above.

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

## Insights:

From Tableau:

For properties over 650k:
* Having a grading of 9+ (look into grading of houses)
* Condition4-6
* having over 4 bedrooms 
* having over 3.5 bathrooms
* having 2 floors but not 3
* having at least 1 view 
* waterfront will increase the value noticeably
* new (2010+) or btw 1900 and 1940




To do: 

Make a map of areas with more than 650000 price and save the zipcodes ( SQL query)

make a fake Xtest with these conditions randomized and test against the model to see if these conditions would yield houses of over 650k of value 




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

**Documentation**  
* Used Notepad++ to update the readme files of the repository, while working, and after a working session, and uploaded them together with the commits. Explored further with hyperlinking in Markdown, as well as integrating images in the files. 


