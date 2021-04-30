setwd("~/Prob and Stats Final Project")

Q2_part2 = read.table("AstrosData.txt", fill = T, header = T)
HomeData = subset(Q2_part2, Place == 'H')
attach(HomeData)
data_bangs = as.numeric(unlist(HomeData$Bangs))
data_diffscore = as.numeric(unlist(HomeData$Difference))

#2a
plot(data_bangs, data_diffscore)

#2b
lm(data_diffscore ~ data_bangs)
abline(lm(data_diffscore ~ data_bangs))

#i
home_example_y = -0.00571 * 2 + 0.88715 #Score differential with 2 bangs

#ii
home_example_x = (0 - .88715) / -0.00571 #Number of bangs heard with a tie score

#2c
r = cor(data_diffscore, data_bangs)

#2d
r_squared = r * r

#2e
qqnorm(data_diffscore)
qqline(data_diffscore)