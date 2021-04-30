setwd("~/Prob and Stats Final Project")

myBangData =read.table("AstrosData.txt", fill = T, header = T)
attach(myBangData)
data_bangs = as.numeric(unlist(myBangData$Bangs))
data_diffscore = as.numeric(unlist(myBangData$Difference))

#1A
x_bar_diffscore= mean(data_diffscore)
median_diffscore = median(data_diffscore, na.rm = F)
std_dev_diffscore = sd(data_diffscore)
var_diffscore= var(data_diffscore)

#Mode
temp = table(as.vector(Difference))
mode_diffscore = names(temp)[temp == max(temp)]

#1B
hist(data_diffscore, freq = F, breaks = 9, main = "Histogram of Difference in Score", xlab = "Difference in Score")

#1C
boxplot(Difference, main = "Difference in Score", ylab = "Difference in Score")

#1D
barplot(Difference, main = "Difference in Score over Whole Season", ylab = "Difference in Score") #A barplot gives a new perspective on just how varied and inconsistent the difference in score was throughtout the Astro's season



#2A
plot(data_bangs, data_diffscore, main = "Difference in Score vs Number of Bangs", xlab = "Number of Bangs", ylab = "Difference in Score")

#2B
lm(data_diffscore ~ data_bangs)
abline(lm(data_diffscore ~ data_bangs))

#i
example_y = -0.02819 * 6 + 1.37998 #Score differential with 6 bangs

#ii
example_x = (1 - 1.37998) / -0.02819 #Number of bangs when Astros are down by 2 runs

#2C
r = cor(data_diffscore, data_bangs)

#2D
r_squared = r * r

#2E
qqnorm(data_diffscore)
qqline(data_diffscore)



#3A
n = nrow(myBangData)
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