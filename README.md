
# Predicting Temperature Levels using
Multiple Linear Regression Model

## Abstract

Weather unpredictability has risen in recent decades due to climate change, which is caused by a
number of variables including growing greenhouse gas emissions and natural variability. This pressing global concerns and its far-reaching consequences makes the ability to predict temperature levels
accurately paramount. Temperature is a fundamental environmental variable that has an influence
on weather, human health, ecosystems, agriculture, energy usage, infrastructure, water bodies, food
production, recreation, industrial processes, transportation and global climate change. Most current
temperature prediction models often fall short in capturing the relationship between multiple predictor variables and temperature changes. This research was to predict temperature levels through the
application of the Multiple Linear Regression model. The dataset chosen for this study was” Air Pollution - Multivariate” dataset from Kaggle: https://www.kaggle.com/datasets/rupakroy/lstmdatasetsmultivariate-univariate, comprised of 43,800 observations and seven variables: air pollution (meters
per second), dew (millimetres), pressure (pascals), windspeed (meters per second), snow size (inches)
and rainfall (millimetres), dependent variable was temperature (degrees celcius). The model parameters were estimated using the Ordinary Least Squares estimation method. The estimate of each
variable was obtained and a scatter plot for the relationship between the temperature and the explanatory variables were plotted to test linearity. Histogram, Q-Q plots and Anderson Darling test were
used to check for the normality assumption. The Histogram figure showed that the error terms were
normally distributed. The Q-Q plot was obtained and showed that the errors exhibit a normal distribution as well as the Anderson Darling test. Durbin Watson test was used and showed that the was no
autocorrelation of the residuals. The Breusch-Pagan test for homoscedasticity had a p-value of 2.2e –
16 that proved residuals have a constant variance thus there was homoscedasticity in the model. The
Variance Inflation Factor (VIF) was used to test for the extent of multicollinearity among predictors.
While some levels of multicollinearity were present, the VIF values did not exceed critical thresholds
that showed high multicollinearity, indicating that the impact of correlated predictors on the variance
of estimated coefficients was relatively modest. Significance tests such as the F-test and t-test were
conducted to evaluate the significance of estimated parameters. The critical value of the F-distribution
was 3.84185. Since the F-ratio was 30924, which was greater than the critical value it was concluded
that the regression model was significant. The t-statistics for all of the independent variables in the
regression model were greater than the critical value of the t-distribution at the 5

## Objectives of the study

1. To fit a multiple linear regression model.
2. To assess the adequacy of the fitted model.
3. To predict temperature level using the fitted model.
4. To assess the accuracy of the predicted values.

# Methodology
##  Multiple Linear Regression Model
Multiple regression analysis is a statistical analysis technique model that determines the relationship between a response variable and some combination of two or more explanatory variables. The
model performed in observance of five assumptions. They include, normality assumption in that the
model assumes that the residuals are normally distributed. Non-normally distributed residuals( highly
skewed or kurtotic variables or variables with substantial outliers) may distort the relationships and
significance tests. The model also assumes that the residuals are independent that is; there is no autocorrelation between the residuals. This means that the error term of one observation is not influenced
by the error term of another observation. The model assumes that there must exist a linear relationship between the response variable and each of the the explanatory variable. This assumption can best
be tested with a scatter plot whereby it will aid in checking for outliers as multiple linear regression
analysis is sensitive to outliers effects. Homoscedasticity is the fourth assumption of multiple linear
regression where residuals are assumed to have a constant variance that is the variance of the errors
are same across all levels. Multicollinearity assumption states that there is no or little multicollinearity. The model assumes that the explanatory variables are not highly correlated to each other. If there
exist a correlation between the residuals, then the regression coefficients are said to be unstable. The
11
Chapter 3. Methodology 12
model describes how a response variable depends linearly on a number of predictor variables. Let Yi
be the response variable and X1,X2,...,Xk be the explanatory variables.









* Witness the power of the CatBoost classifier in accurately predicting customer churn based on a comprehensive set of features.
* Delve into the intricacies of model performance through a detailed confusion matrix visualization, providing a clear picture of true positives, true negatives, false positives, and false negatives.
* Gain insights into precision, recall, and F1-score, allowing a nuanced understanding of the model's performance across different metrics.
* Explore the Receiver Operating Characteristic (ROC) curve, visualizing the trade-off between true positive rate and false positive rate, complemented by the AUC-ROC score for a holistic evaluation of model efficacy.

## How to work on the project?

### Step 1: Download the Dataset
Download the <a href="https://github.com/Atharva-Parkar/Customer-Churn-Prediction-with-Machine-Learning/blob/main/Customer_Churn.csv">Customer Churn Dataset</a> from the repository.

### Step 2: Upload the Dataset to Google Drive
Upload the downloaded dataset to your Google Drive. This ensures convenient access to the dataset during the project.

### Step 3: Open the Jupyter Notebook
Open the provided <a href="https://github.com/Atharva-Parkar/Customer-Churn-Prediction-with-Machine-Learning/blob/main/Customer_Churn_Prediction.ipynb">Jupyter Notebook</a> on your local machine or in a Google Colab environment.
 
### Step 4: Configure Google Drive Connection
If using Google Colab, configure Google Drive connection by following the instructions in the notebook. This allows access to the dataset stored in Google Drive.

### Step 5: Run the Jupyter Notebook
Execute the notebook cells sequentially to perform tasks such as loading the dataset, preprocessing data, training the CatBoost model, and evaluating model performance.

### Step 6: Explore Model Insights
Analyze accuracy, confusion matrix, classification report, and AUC-ROC curve visualizations within the notebook to gain insights into customer churn predictions.

### Step 7: Customize and Experiment
Modify the notebook to experiment with different features, models, or preprocessing techniques.
Iterate on the project to enhance its capabilities and tailor it to your specific dataset or business requirements.

## Find a bug?

If you encounter any issues or wish to suggest improvements for this project, kindly submit an issue using the "Issues" tab above. In case you'd like to contribute a fix, please submit a pull request (PR) and reference the corresponding issue you created.
