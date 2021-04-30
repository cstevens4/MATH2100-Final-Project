setwd("~/Prob and Stats Final Project")

Astros = read.table("AstrosData.txt", fill = T, header = T)
attach(Astros) #brings in dataset
data_bangs = as.numeric(unlist(Astros$Bangs))
data_runs = as.numeric(unlist(Astros$Runs))
data_diffscore = as.numeric(unlist(Astros$Difference))

#Question 1

#1A - Runs
result.mean <- mean(Runs) #returns the mean
median.result <- median(Runs) #returns the median
standardDev.result = sd(Runs) #returns the standard 
variance.result = var(Runs) #returns the variance

temp = table(as.vector(Runs))
mode_diffscore = names(temp)[temp == max(temp)]

#1A - Difference
x_bar_diffscore= mean(data_diffscore)
median_diffscore = median(data_diffscore, na.rm = F)
std_dev_diffscore = sd(data_diffscore)
var_diffscore= var(data_diffscore)

temp = table(as.vector(Difference))
mode_diffscore = names(temp)[temp == max(temp)]

#1B - Runs
hist(data_runs, freq = F, breaks = 10); lines (density(Runs)) #shows a histogram with a line to show the actual values as well
stem(Runs)
summary(Runs)

#1B - Difference
hist(data_diffscore, freq = F, breaks = 9, main = "Histogram of Difference in Score", xlab = "Difference in Score")

#1C - Runs
boxplot(Runs, xlab = c("Runs Scored per Game")) #Box Plot which shows quartiles of bangs per game

#1C - Difference
boxplot(Difference, main = "Difference in Score", ylab = "Difference in Score")

#1D - Runs
pie(Runs, labels=Runs, col=rainbow(length(Runs)), xlab = c("Piechart of Runs Scored per game")) #pie chart showing bangs per game

#1D - Difference
barplot(Difference, main = "Difference in Score over Whole Season", ylab = "Difference in Score") #A barplot gives a new perspective on just how varied and inconsistent the difference in score was throughtout the Astro's season

#Question 2

#2A - Runs
plot(data_runs,data_bangs, main = "Line of Best Fit for Runs Scored vs Bangs") #scatterplot of line of best fit for Runs Scored vs Bangs

#2A - Difference
plot(data_bangs, data_diffscore, main = "Difference in Score vs Number of Bangs", xlab = "Number of Bangs", ylab = "Difference in Score")

#2B - Runs
summary(lm(data_runs~data_bangs))
plot(data_runs,data_bangs, main = "Line of Best Fit for Runs Scored vs Bangs") #scatterplot of line of best fit for Runs Scored vs Bangs
abline(lm(data_runs~data_bangs))

#i
example_y_runs = -0.01058 * 16 + 5.51060 #Total runs scired by Astros when 16 bangs are heard

#ii
eample_x_runs = (5 - 5.51060) / -0.01058 #Total number of bangs heard when Astros have 5 runs

#2B - Difference
lm(data_diffscore ~ data_bangs)
abline(lm(data_diffscore ~ data_bangs))

#i
example_y_diff = -0.02819 * 6 + 1.37998 #Score differential with 6 bangs

#ii
example_x_diff = (1 - 1.37998) / -0.02819 #Number of bangs when Astros are down by 2 runs

#2C - Runs
r_runs = cor(data_runs,data_bangs)

#2C - Difference
r_diff = cor(data_diffscore, data_bangs)

#2D - Runs
r_squared_runs = r_runs*r_runs

#2D - Difference
r_squared_diff = r_diff * r_diff

#2E - Runs
qqnorm(data_runs)
qqline(data_runs)

#For X, replace STD dev and mean with Y variants for Y interval
error <- qnorm(.975)*(standardDev.result/sqrt(162))
result.mean - error #Left Bound
result.mean + error #Right Bound

#2E - Difference 
qqnorm(data_diffscore)
qqline(data_diffscore)

#Question 3

#3A
n = nrow(Astros)
df = n - 1

#i.
t_critical_value_95_diffscore = qt(1-(.05/2),df)
t_margin_of_error_95_diffscore = (t_critical_value_95_diffscore*(std_dev_diffscore/sqrt(n))) #margin of error

#ii.
right_bound_t_95_diffscore = x_bar_diffscore + t_margin_of_error_95_diffscore
left_bound_t_95_diffscore = x_bar_diffscore - t_margin_of_error_95_diffscore

#3B
x_bar_bangs = mean(data_bangs)
std_dev_bangs = sd(data_bangs)

#i.
t_critical_value_95_bangs = qt(1-(.05/2), df) #T-score critical value
t_margin_of_error_95_bangs = (t_critical_value_95_bangs*(std_dev_bangs/sqrt(n))) #margin of error

#ii.
right_bound_t_95_bangs = x_bar_bangs + t_margin_of_error_95_bangs
left_bound_t_95_bangs = x_bar_bangs - t_margin_of_error_95_bangs