setwd("~/Prob and Stats Final Project")

myAstrosBangsData = read.table("AstrosData.txt", fill = T, header = T)
attach(myAstrosBangsData)
data_bangs = as.numeric(unlist(myAstrosBangsData$Bangs))

n = nrow(myAstrosBangsData)
x_bar_bangs = mean(data_bangs)
std_dev_bangs = sd(data_bangs)
pop_std_dev_bangs = sqrt(((std_dev * std_dev) * (n - 1)) / n)

#i.
df = n - 1
t_critical_value_95_bangs= qt(1-(.05/2),df)
t_margin_of_error_95_bangs = (t_critical_value_95_bangs*(std_dev_bangs/sqrt(n))) #margin of error

#ii.
right_bound_t_95_bangs = x_bar_bangs + t_margin_of_error_95_bangs
left_bound_t_95_bangs = x_bar_bangs - t_margin_of_error_95_bangs