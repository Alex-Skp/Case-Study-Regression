![Case study Regression Image](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/project+banners/real-state-project.jpg)

# Case Study: Regression

* [Introduction](#Introduction)  
* [Conclusions](#Conclusions)  
* [Methodology](#Methodology)  
* [Deliverables](#Deliverables)  


## Introduction
This is the mid bootcamp project for Ironhack Data Analytics Bootcamp,
by Alexandre Sommerkamp. 

**Background:**  
You are working as an analyst for a real estate company. Your company wants to build a machine learning model to predict the selling prices of houses based on a variety of features on which the value of the house is evaluated.

**Objective:**  
The task is to build a model that will predict the price of a house based on features provided in the dataset. The senior management also wants to explore the characteristics of the houses using some business intelligence tool. One of those parameters include understanding which factors are responsible for higher property value - \$650K and above.

## Conclusions
After our analysis of the dataset, we can conclude that price of a property is highly dependand on the area where it is located, and is highly correlated to the grading given by Kings County building regulations. Prices per sqare feet vary wildly depending on the area, being more expensive in the areas of Downtown Seattle, especially north of Elliot Bay, and in western Bellevue, by lake Washington. Another high number of expensive properties are located in the area of Sammarish, in the east edge of lake Washington, but these correspond to bigger lot sizes. 

To respond senior management's question, and following analysis in Tableau, we concluded that even though the price will depend a lot in where the property is located and its living space size, there are nuances in the characteristics:
* 85% of properties over 650000 dollars are graded 8 or over, while only 35 percent of those under 650k do
* 80% of higher level properties have more than 3 bathrooms while only 42 percent of the ones under the price do
* 65% of high tier listings have 4 or more bedrooms, while only 26% of the less expensive ones do
* Most of of the $650k+ listings have two floors, but many have also one.
* More of the higher priced listings have a viev than the lower ones, but very expensive listings also don't have a view, but this is very related to location too.
* Being in the waterfront will substantially increase our sale prize. the average of being in the waterfront is around 300% higher than not being in the waterfront.
* Average price of properties built around 1900-1940 is around or over our target. In average, only new built properties achieve those higher averages.

Regarding the design and the model, we approached it in a measurable way, trying to keep record of every iteration of cleaning the data to feed to the model. In the end we could predict the price of the houses with around an average error of +- $105k, which is not very accurate for a database which average listing price is of $540k. For more details in the machine learning model, click [here](https://github.com/Alex-Skp/Case-Study-Regression/tree/main/python).

We were also able to draw a picture on how properties were built throughout the years through this interactive [dashboard](https://public.tableau.com/profile/alex2690#!/vizhome/SeattlePropertySaleDataWorkbook/HowarepropertiesbuiltinSeattle), as the database had data of properties built back from the beginning of the twentieth century. 

As an extra step forward we should work on turning this model into a working program that could be a very valuable tool for real estators in the area, or possible investors, as well as testing alternative regression models, to see if they can fit better our data and make more accurate predictions.  

## Methodology:

In order to complete this project, we went through the following steps. Some tasks required jumping back and forth between different tools, but this has been roughly the order of execution:

**Preparation**
* Created a Trello board with the steps, further research, and a breakdown of the tasks.
* Created a [github repository](https://github.com/Alex-Skp/Case-Study-Regression).
* Made sure all packages were installed in my conda environment.

**Documentation**  
* Used Notepad++ to update the readme files of the repository, while working, and after a working session, and uploaded them together with the commits. Explored further with hyperlinking in Markdown, as well as integrating images in the files. 

**SQL**
* Started with SQL in order to gain insight in the data before start working with it on python, and taking that part out of the way, as in this project we will not be linking our SQL server to python, and will import the file as a CSV directly.  
* [Check the script](https://github.com/Alex-Skp/Case-Study-Regression/blob/main/sql/sql-exercises.sql).

**Python**:
* Created a function in order apply the model and log test data, in order to afterwards check which steps contributed to a better scores, and which ones were detrimental.
* Made an initial import, with a basic cleaning of the data, to further export [a file](https://github.com/Alex-Skp/Case-Study-Regression/blob/main/tableau/Seattle%20Property%20Sale%20Data%20Workbook.twbx) that would be afterwards used to find insights and take conclusions with tableau.
* Choosed to focus in linear regression to fit the data, leaving other models for testing in the future.
* Pre-Processing the data in order to feed it to the model, in each iteration of the testing. 
* This experimentation allowed to train the model one last run, achieving the highest score.

**Tableau**
* Imported a csv file from the python code, after it was reviewed there for spelling or input errors
* Went through the questions suggested and plotted the answers to these questions, evaluating the data further.
* Detected certain anomalies while plotting that will be removed back in the python code, hoping to improve the ML models. 
* Created a [dashboard](https://public.tableau.com/profile/alex2690#!/vizhome/SeattlePropertySaleDataWorkbook/HowarepropertiesbuiltinSeattle) which shows characteristics from properties built in Seattle since 1900, based on the data provided
* Tested the dashboard with a third person foreign to the project, to see if the points shown in the dashboard get through and are easy to understand. 
* Uploaded the whole workbook in [Tableau Public](https://public.tableau.com/profile/alex2690#!/vizhome/SeattlePropertySaleDataWorkbook/HowarepropertiesbuiltinSeattle), then downloaded the file and uploaded [in this repository](https://github.com/Alex-Skp/Case-Study-Regression/tree/main/tableau)). 

**Presentation**  
* Will work with Google Slides, presenting the business problem, ther methodology, and the insights learned in the process, supported by more maps and graphs plotted with Tableau.




## Deliverables:   

*  [Readme.md](https://github.com/Alex-Skp/Case-Study-Regression/blob/main/README.md)
*  Python File [in Github](https://github.com/Alex-Skp/Case-Study-Regression/blob/main/python/data-wrangling-and-linear-regression.ipynb) | [in nbviewer](https://nbviewer.jupyter.org/github/Alex-Skp/Case-Study-Regression/blob/main/python/data-wrangling-and-linear-regression.ipynb)
* [Datasets](https://github.com/Alex-Skp/Case-Study-Regression/tree/main/data)
*  Tableau workbook:  
	[See in tableau](https://public.tableau.com/profile/alex2690#!/vizhome/SeattlePropertySaleDataWorkbook/HowarepropertiesbuiltinSeattle) | [Go to files](https://github.com/Alex-Skp/Case-Study-Regression/tree/main/tableau)
* [File containing SQL queries](https://github.com/Alex-Skp/Case-Study-Regression/tree/main/sql)
