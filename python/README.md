# Case Study: Regression. Fitting the data with linear regression. 

## Introduction:
Here you will find the part of the study dedicated to create a model that fits our data, in order to predict the value of the property. We focused in creating a way to track how changes in the dataset that we feed the model, affect the outcome of it. 

### Objective
* Create a model where we can feed characteristics of a house sale listing, and that will return an accurate prediction of price.
* Gaining insight on the data through exploratory data analysis (EDA)
* Find what characteristics define a property valued over $650k.  

### Results
* A clean dataset to feed in Tableau, to proceed with the EDA and gain more insights in the data. 
* With the functions created to track, monitor and plot performance of the model, we were able to take the accuracy of the linear regression model applied from 69,56% r-squared score to 77%, and to reduce the average absolute error from $126k to $105k
* We learned some more insights on how regression models work:
	* Even though certain columns that seem redundant, or are highly correlated they impact the model performance in different ways 
	* Removing extreme outliers can lead to overfitting quickly, so it has to be done with extreme care, keeping more an eye in anomalies, after studying them accordingly. 
	* Adding other sources of data positively helps making predictions, we just have to be very careful of the source, and if the data is actually usable in the same context of our original database. 
	
### Approach
The model has been taken from the scikit learn library for python. The data was manipulated with python, especially using numpy and pandas for managing tables and dataframes. We used Seaborn and MatPlotLib to create visualizations The model was applied using jupyter notebook as the work environment. The database has been facilitated by Ironhack, the specifics of the database can be checked following [this link](https://github.com/Alex-Skp/Case-Study-Regression/tree/main/data).
The steps applied to achieve our objectives were: 
1. Importing libraries, and the database into a pandas dataframe
2. Checking for missing data, duplicated values, and spelling errors. 
3. See what is the data distribution in numerical values, then exporting the data to be visualized in Tableau 
4. Proceed with an EDA analysis of the data, exploring the categories, and the correlation between numerical variables 
5. Created several things in order to keep track of the model performance:
* A dataframe, where we would log different metrics of model performance. For this analysis we recorded r2 score, adjusted r2 score, mean squared error, root mean squared error, and mean average error. We tracked more specifically r2 score and mean average error to improve the model performance. This dataframe would also store the test size of the model run, and a comment that would help track the wrangling steps that took us to that point. 
* A function that takes the prepared data, a comment, and % of data used as a test sample, and would record all logs of performance, print them and then return the model for further use. 
* Another function, that would plot r2 score and mean average error, over the number of attempts, to see graphically where is our performance heading with our steps.
6. Preprocessing and execution of the data:
We iterated the process of cleaning and applying the model 15 times, with different steps that we thought would improve the performance. In order to facilitate preprocessing over all these iterations, we also defined functions that would apply encoders and scalers that would ready our data and feed it into the model. In this case we used: 
* minmax_scale from scikit learn, to be used mostly in numerical, discrete variables
* standard scaler, also from scikit learn, to be applied in numerical, continuous variables
* onehot encoder, to encode categorical data. We also used .get_dummies from pandas but did not define a function for it. 
* a function that rescales a series into a logarithmic scale, and substitutes null values created by this first function into the mean of the series. This function would also plot the distribution of the series before and after the cleaning, in order to test and check if the variable distribution would be more normal. 

In each iteration we had to separate the data, go through wrangling steps, and concatenate all those dataframes again together, in order to control which columns are used and which ones are not. We would also extract the independent variable here at each step, in case out wrangling would involve dropping rows, or would modify the dataset in this dimension.

7. At this stage we would print the log, and visualize the performance over time. This part was executed at every step to keep track of the process, but is presented here at the end only, for better readability. We also presented our conclusions, on what did and did not specifically help the model performance, as well as how we would have approached the model in retrospective, to apply it again once more in the last point of the exercise.  

8. As a last point we applied only the steps that improve the model performance, leaving the others out, to test the model once more, and it did achieve a much better result that all the others, concluding that the process helped indeed to gain a better insight on how the model works.

### Things to work on

From this point we would work in several things:
* Testing this approach with other regression models, and see what model perfoms better than other in our dataset
* Improve the presentation of log data. A version has been exported to further play with in Tableau
* Build an actual function that would take the characteristics of a listing, and would return the aproximated valuation of the property. 
