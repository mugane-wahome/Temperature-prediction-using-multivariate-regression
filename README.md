
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

##  Estimation of Parameters
The parameters of the fitted multiple linear regression model were estimated using the ordinary least
squares method. Among the independent variables, pollution exhibited a strong negative relationship
with the dependent variable, temperature, with a coefficient estimate of -0.02488. This indicated
that as pollution levels increase temperature levels tend to decrease. In contrast, dew had a positive
relationship with temperature, represented by a coefficient estimate of 0.4599, suggesting that higher
dew levels correspond to higher temperatures. Pressure demonstrated an inverse relationship, as a
decrease in pressure, represented by the coefficient estimate of -0.5005, was associated with lower
temperatures. Wind speed exhibited a positive correlation with temperature, indicated by a coefficient
estimate of 0.00997, meaning that higher wind speeds are linked to higher temperatures. Snow size
and rainfall both had negative associations with temperature, with coefficient estimates of -0.6759
25
Chapter 4. Results and Discussions 26
and -0.5329, respectively, implying that larger snowfall and increased rainfall contribute to lower
temperature

The multiple linear regression model is of the form;
temperature =522.6−0.02488pollution+0.4599dew
−0.5005press+0.00997wnd spd
−0.6759snow−0.5329rain


##  Model adequacy
#Linearity
![](https://github.com/mugane-wahome/Temperature-prediction-using-multivariate-regression/blob/main/new%20scatter%20plot.png)
The above  is scatter plot for the relationship between the temperature and the explanatory variables
.The scatter plots visually illustrated the relationship between temperature and the explanatory variables, providing a clear representation of their associations. The data points on the plot were dispersed
in a manner that suggested an approximate linear relationship, indicating that changes in the explanatory variables are accompanied by corresponding changes in temperature
# Normality
The test for normality was examined using a histogram, a Q-Q plot of residuals and using Anderson
## Histogram
![](https://github.com/mugane-wahome/Temperature-prediction-using-multivariate-regression/blob/main/new%20scatter%20plot.png)
The above  is a histogram of the error terms. The figure shows that the error terms are normally
distributed. For a histogram with normally distributed errors terms, the shape of the histogram is
always symmetric such that the mode, mean and the median are identical. When the skewedeness is
0 then the error terms are said to be symmetrical, when negative, it indicate that they are negatively
skewed and if positive, it indicates that the errors terms are positively skewed. A skewness of 0.000391
indicated that the distribution of residuals was approximately normal. This meant that the error terms
were normally distributed
## Q-Q plot
![](https://github.com/mugane-wahome/Temperature-prediction-using-multivariate-regression/blob/main/new%20scatter%20plot.png)

## Anderson darling test
The p-value of the residuals was 2.2e-16  which was less than 0.05, thus the null hypothesis that the residuals are not normally distributed was rejected

## Durbin Watson test
The Durbin-Watson test statistic was 0.11778. This value is significantly lower than 2, suggesting the
presence of positive autocorrelation in the residuals. A p-value of 2.2e-16 was obtained which lead to
the rejection of the null hypothesis that there is no autocorrelation.

## Breusch-Pagan test
The Breusch-Pagan test for homoscedasticity had a p-value of 2.2e − 16 which was less than the
level of significance of 0.05.This led to rejection of the null hypothesis that residuals do not have a
constant variance and the alternative hypothesis that residuals have a constant variance was accepted
 It was concluded that there was homoscedasticity in the multiple linear regression model.

### Variance inflation factor
The Variance Inflation Factor (VIF) values for the explanatory variables in the regression model provided insights into the extent of multicollinearity among predictors. The ’pollution’ variable exhibited
little to no multicollinearity with a VIF close to 1. However, the ’dew’ and ’pressure’ variables had
moderate levels of multicollinearity, as indicated by VIF values of 2.804533 and 2.603112, respectively. Conversely, ’wind speed,’ ’snow,’ and ’rain’ had VIF values close to 1, suggesting minimal
multicollinearity. While some level of multicollinearity is present, the VIF values did not exceed
critical thresholds, indicating that the impact of correlated predictors on the variance of estimated
coefficients was relatively modes

### F test
The critical value of the F-distribution was 3.84185. Since the F-ratio was 30924, which was greater
than the critical value, the null hypothesis was rejected and it was concluded that the regression model
was significan

### R squared and adjusted R squared
R-squared measures the proportion of variance that a regression model explains. In this study a value
of 0.8090451 was obtained as the R
2 meaning that 80.90451% of the variance in the temperature levels
prediction was explained by the multiple linear regression model. The R
2
increases with the increase
in variables without preventing possibilities of over fitting thus it is the best to employ. Adjusted R
2
controls for each additional predictor added (to prevent from over fitting), so it may not increase as
you add more variables. The value of the adjusted R
2 obtained was 0.809019 which was a relatively
smaller percentage than the R
2
.Those values were relatively bigger thus concluded that multiple linear
regression model was the best for predicting temperature levels.

### t test
The null hypothesis was rejected for all of the independent variables, since the t-statistics for all of the
independent variables in the regression model were greater than the critical value of the t-distribution
at the 5% significance level. This meant that all of the independent variables were statistically significant and had a non-zero effect on the dependent variable temperature.

### RMSE

The dataset was divided into two parts, with 80% of the data used for training and the remaining 20%
used for testing. The model yielded a relatively low root mean square error RMSE of 5.4837. This
low RMSE value indicates the reliability of the model’s temperature level predictions. As a result, the
model proves to be suitable for predicting temperature levels.

## Conclusion
An accurate prediction of temperature can help organization and governments to improve on planning,
reduce risk, improve efficiency and protect human health and well-being. In the study temperature was
being predicted using multiple linear regression model. From the results obtained it was concluded
that multiple linear is a good model to use in temperature prediction.


