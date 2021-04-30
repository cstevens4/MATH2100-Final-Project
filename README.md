# MATH2100-Final-Project

## Introduction

During the 2018 MLB season, the Houston Astros were one of the hottest teams in baseball. Their hot streak caught the league by storm and they eventually went to the playoffs. There, they steamrolled their competition on the team's way to a World Series Championship. However, news broke out that the team had cheated during the season. Pitchers and catchers have signals to secretly tell what pitch will be thrown. It is illegal in the MLB to steal a pitcher's signs using any kind of technology. What the Astros had done was, set up camera to decode the pitcher's signs. 

The tema's plan was to bang as loud as they could from the dugout whenever they saw a ptcher was going to pitch an off speed pitch. This would help indicate the batter should not expect a fastball and instead wait a bit for the pitch to move. This can arise in more homeruns since a batter would know when to "sit offspeed". Our goal in this project is to see whether or not the banging helped the Astros by seeing when they banged (according to difference in runs) and if the amount of runs scored depended on amount of bangs heard. 

## Data

For this project we used data from signstealingscandal.com which had an excel file of every Astros game, including stats from that game and how many bangs were heard in that game. Bangs would only affect home games since that is where the Astros could set up camera without being caught.

## Quick Statistics

### Difference In Score:

* Mean: +1.20 runs
* Mode: +1 run
* Median: +1.50 runs
* Standard Deviation: 4.85 runs
* Variance: 23.57 runs


### Runs Scored:

* Mean: 5.44 Runs 
* Median: 5 Runs 
* Mode: 3 Runs
* Standard Deviation: 3.63 Runs
* Variance: 13.19 Runs

## Linear Regression Models:

### Difference In Score (Number of bangs predicts Difference in Score):

* Trend Line Formula: y = -0.02819x + 1.37998
* R = -0.04755
* R^2 = 0.226%

### Runs Scored (Number of bangs predicts Runs Scores):

* Trend Line Formula: y = -0.015058x + 5.51060
* R = -0.039885
* R^2 = 0.159%

## Confidence Intervals

### Difference In Score:

* This is a T test because the distribution is not normal and we still do not know the population standard deviation
  * T-score critical value: 1.975 (rounded to 3 decimals)
  * Mean Bangs: 6.253 (rounded to 3 decimals)
  * Margin of Error: 1.271 (rounded to 3 decimals)
  * Standard Deviation: 8.189 (rounded to 3 decimals)
* We can say, with 95% confidence, that the true population mean number of runs scored is between 4.983 runs scored and 7.524 bangs

### Runs Scored:

* This is a T test as well because the distribution is not normal and we still do not know the population standard deviation
  * T-score critical value: 1.947 (rounded to 3 decimals)
  * Mean Bangs: 5.444 (rounded to 3 decimals)
  * Margin of Error: 0.559 (rounded to 3 decimals)
  * Standard Deviation: 3.632 (rounded to 3 decimals)
* We can say, with 95% confidence, that the true population mean number of runs scored is between 4.885 runs scored and 6.004 runs scored


## Conclusion:

It does not look like the bangs helped out a lot in terms of run production. We also can see bangs did not depend on difference in score. We know now that bangs depended on type of pitch, so, if we wanted to expand our serach, we could see when pitchers are most likely to throw those offspeed pitches and see if the Astros were in those situations more tan other teams. We could also see if banging had an effect on a player's batting average or how many stolen bases there were. Since offspeed pitches are slower, there's a better chance a baserunner could steal a base. 
