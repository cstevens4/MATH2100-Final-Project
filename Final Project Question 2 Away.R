setwd("~/Prob and Stats Final Project")

AwayData = read.table("AstrosData.txt", fill = T, header = T)
attach(Q2Data)
data_bangs = as.numeric(unlist(AwayData$Bangs))
data_diffscore = as.numeric(unlist(AwayData$Difference))

#2a
plot(data_bangs, data_diffscore)

#2b
lm(data_diffscore ~ data_bangs)
abline(lm(data_diffscore ~ data_bangs))

#i
example_y = -0.02819 * 6 + 1.37998 #Score differential with 6 bangs

#ii
example_x = (-2 + 1.37998) / -0.02819 #Number of bangs when Astros are down by 2 runs

#2c
r = cor(data_diffscore, data_bangs)

#2d
r_squared = r * r

#2e
qqnorm(data_diffscore)
qqline(data_diffscore)