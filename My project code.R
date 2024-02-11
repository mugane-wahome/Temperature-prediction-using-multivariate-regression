# Install the necessary packages

install.packages("caret")
install.packages("data.table")
install.packages("data.table")
install.packages("readr")
install.packages("gridExtra")
install.packages("ggplot2")
install.packages("stats")
install.packages("stats")
install.packages("lmtest")
install.packages("car")

#loading the required libraries

library(readr)
library(gridExtra)
library(ggplot2)
library(stats)
library(lmtest)
library(car)


#loading the data
data <- read_csv("LSTM-Multivariate_pollution.csv")
view()
view(data)
# Fitting  the model
model <- lm(temp ~ pollution + dew + press + wnd_spd + snow + rain, data = data)

# Print the summary of the model
summary(model)


#Generating scatter plots

# Assuming your data is in a data frame called 'data'
independent_vars <- c("pollution", "dew", "press", "wnd_spd", "snow", "rain")

par(mfrow = c(3, 2))  # Arrange plots in a 2x3 grid

for (var in independent_vars) {
  plot(data[[var]],data$temp, main = paste("Scatter Plot of temp vs.", var),
       xlab = var, ylab = "temp")
}


residuals = model$residuals
print(residuals)
#generating the histogram for residuals

ggplot(data.frame(residuals = model$residuals), aes(x = residuals)) +
  geom_histogram(bins = 20, fill = "lightblue", color = "black") +
  labs(title = "Histogram of Residuals", x = "Residual values", y = "Frequency") +
  theme(plot.title = element_text(hjust = 0.5))  # Center the title using theme()


#Generating the Q-Q plot of residuals

ggplot(data.frame(residuals = model$residuals), aes(sample = residuals)) +
  stat_qq() +
  stat_qq_line(color = "red") +
  labs(title = "Q-Q Plot of Residuals", y = "Sample quantiles", x = "Theoretical quantiles") +
  
  # Center title
  theme(plot.title = element_text(hjust = 0.5)) +
  
  # Center axis labels
  theme(axis.title.x = element_text(hjust = 0.5),
        axis.title.y = element_text(hjust = 0.5))


# Durbin Watson test
dwtest(model)


#brewtch pagan test
bp_test <- bptest(model)

# Print the result
print(bp_test)


#chi square 
df <- 6
# Significance level (e.g., 0.05 for a 95% confidence level)
alpha <- 0.05
# Obtain critical value
critical_value <- qchisq(1 - alpha, df)
# Print the critical value
cat("Critical value at", 1 - alpha, "quantile for df =", df, ":", critical_value, "\n")




# Calculate VIF for each predictor
vif_values <- vif(model)

# Print the VIF values
print(vif_values)




#F TEST
# Perform analysis of variance (ANOVA) to obtain the F-ratio
anova_result <- anova(model)

# Print the ANOVA table
print(anova_result)

# Extract the F-ratio and its associated p-value
f_ratio <- anova_result$F[1]
p_value <- anova_result$`Pr(>F)`[1]

# Print the F-ratio and p-value
cat("F-ratio:", f_ratio, "\n")
cat("P-value:", p_value, "\n")



#R squared and adjusted R squared

# Get the summary of the model
summary_model <- summary(model)

# Extract the R-squared value
r_squared <- summary_model$r.squared

# Print the R-squared value
cat("R-squared:", r_squared, "\n")


library(caret)

# Set seed for reproducibility
set.seed(123)

# Create splits with stratified sampling (specify target variable)
train_index <- createDataPartition(data$temp, p = 0.8, list = FALSE)

# Create training and testing sets
train_data <- data[train_index, ]
test_data <- data[-train_index, ]

# Calculating RMSE
library(Metrics)

#  Fit the model on the training set
model <- lm(temp ~ pollution + dew + press + wnd_spd + snow + rain, data = train_data)

# Make predictions on the testing set
predictions <- predict(model, newdata = test_data)

#  Calculate residuals
residuals <- predictions - test_data$temp

#  Calculate RMSE
rmse <- rmse(predictions, test_data$temp)

# Print the RMSE
cat("Root Mean Squared Error (RMSE):", rmse, "\n")



plot(model$fitted.values, model$residuals)


# Generate 30 random sets of values for independent variables
newdata <- data.frame(
  pollution = rnorm(30, mean = mean(data$pollution), sd = sd(data$pollution)),
  dew = rnorm(30, mean = mean(data$dew), sd = sd(data$dew)),
  press = rnorm(30, mean = mean(data$press), sd = sd(data$press)),
  wnd_spd = rnorm(30, mean = mean(data$wnd_spd), sd = sd(data$wnd_spd)),
  snow = sample(c(0, 1), 30, replace = TRUE),  # Randomly assign snow as 0 or 1
  rain = sample(c(0, 1), 30, replace = TRUE)   # Randomly assign rain as 0 or 1
)

# Make predictions using the model
predictions <- predict(model, newdata = newdata)

# Print the 30 predictions
print(predictions)


# Generate random predictions as before
#newdata <- data.frame(...)  # Fill in the variable values as in the previous code
predictions <- predict(model, newdata = newdata)

# Combine the new data and predictions into a table
table_with_predictions <- cbind(newdata, prediction = predictions)

# Print the table
print(table_with_predictions)



actual_values <- data$temp

predicted_values <- predict(model, newdata = data)  # Use the original data for predictions
actual_values  # Contains the actual values
predicted_values  # Contains the predicted values

summary_model <- summary(model)

# Extract the coefficients, standard errors, and T-values
coefficients <- coef(summary_model)
std_errors <- coefficients[, "Std. Error"]
t_values <- coefficients[, "t value"]

# Print the coefficients and their corresponding T-values
cat("Coefficients:\n", coefficients[, "Estimate"], "\n")
cat("Standard Errors:\n", std_errors, "\n")
cat("T-values:\n", t_values, "\n")

# Extract the first 20 actual values
actual_values <- data$temp[10000:10030]

# Generate predictions for the first 20 observations
predicted_values <- predict(model, newdata = data[10000:10030, ])

# Create a data frame with actual and predicted values
results_df <- data.frame(actual = actual_values, predicted = predicted_values)

# Print the table
print(results_df)

