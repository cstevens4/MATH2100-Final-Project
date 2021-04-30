setwd("~/Prob and Stats Final Project")

myTemp_AstrosBangs = read.table("AstrosData.txt", fill = T, header = T)
attach(myTemp_AstrosBangs) #brings in dataset
data_bangs = as.numeric(unlist(myTemp_AstrosBangs$Bangs))
data_runs = as.numeric(unlist(myTemp_AstrosBangs$Runs))


#1A
result.mean <- mean(Runs) #returns the mean
median.result <- median(Runs) #returns the median
standardDev.result = sd(Runs) #returns the standard 
variance.result = var(Runs) #returns the variance

#Mode
temp = table(as.vector(Runs))
mode_diffscore = names(temp)[temp == max(temp)]

#1B
hist(data_runs, freq = F, breaks = 10); lines (density(Runs)) #shows a histogram with a line to show the actual values as well
stem(Runs)
summary(Runs)

#1C
boxplot(Runs, xlab = c("Runs Scored per Game")) #Box Plot which shows quartiles of bangs per game

#1D
pie(Runs, labels=Runs, col=rainbow(length(Runs)), xlab = c("Piechart of Runs Scored per game")) #pie chart showing bangs per game

#2A
plot(data_runs,data_bangs, main = "Line of Best Fit for Runs Scored vs Bangs") #scatterplot of line of best fit for Runs Scored vs Bangs

#2B
summary(lm(data_runs~data_bangs))
plot(data_runs,data_bangs, main = "Line of Best Fit for Runs Scored vs Bangs") #scatterplot of line of best fit for Runs Scored vs Bangs
abline(lm(data_runs~data_bangs))

#i
example_y = -0.01058 * 16 + 5.51060 #Total runs scired by Astros when 16 bangs are heard

#ii
eample_x = (5 - 5.51060) / -0.01058 #Total number of bangs heard when Astros have 5 runs

#2C
r= cor(data_runs,data_bangs)

#2D
r_squared = r*r

#2E
qqnorm(data_runs)
qqline(data_runs)

#For X, replace STD dev and mean with Y variants for Y interval
error <- qnorm(.975)*(standardDev.result/sqrt(162))
result.mean - error #Left Bound
result.mean + error #Right Bound



