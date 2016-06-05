  # Since ABL80 contributes the most of ABL##, APL, GL## (highest AIC), IPOV (all of which are correlated) we can remove the colinear variables to simplify the model
# Since PER is heavily correlated with IPOV, we can maybe remove PER
# Since BEDRMS is heavily correlated with ROOMS, we can remove BEDRMS to simplify the model
# Because of our interaction terms and higher order terms, we will not remove PER or BEDRMS

# ZSMHC, ZINC2, UTILITY, TOTSAL, struc#, ROOMS, OTHERCOST, BDecade, home_age, and age are not colinear
# ABL##, APL, BEDRMS, ROOMS GL##, IPOV, PER all contribute redundant information

n = 1000
mean = 10
sd = 1
train.percent = .70
test.percent = .30
set.seed(1)

complete.model= lm(
  VALUE ~ 
    ABL80 + 
    AGE1 +
#    B2000s +
#    B90s +
#    B40s50s + # What decade was the home built
#    B60s70s +
#    B80s +
#    B2010s +
    BEDRMS +
    ROOMS_BEDS +
#    BEDRMS_SQ + #Revomed due to high p-value
#    BED_PERSON + #Revomed due to high p-value
    ROOMS_PERSON +
    home_age +
    OTHERCOST +
    PER +
    PER_SQ +
    ROOMS +
    ROOMS_SQ +
    struc1 +
#    struc2 + #Revomed due to high p-value
    struc3 +
    struc4 +
    struc5 +
    TOTSAL +
    TOTSAL_PERSON +
    UTILITY +
    UTILITY_SQ +
    ZINC2 +
    ZSMHC, data=thads
)
#Check for overall Adjusted R-squared
summary(complete.model)

vif(complete.model)
#vif are too high for a number of variables.  Interacton terms ROOMS_SQ and ROOMS_BEDS have to be dropped.

sample = sample(1:nrow(thads), train.percent * nrow(thads))
train = thads[sample,]
test = thads[-sample,]
formula = formula(complete.model)

# STOLEN from Professor Qualls:
train.fit = lm(formula, data=train)
train.summary = summary(train.fit)
yHat = predict(train.fit, test)  # fit test data using train model
cor.yhat.y = cor(yHat, test$VALUE)
train.rmse = train.summary$sigma
predictors = dim(train.summary$coefficients)[1]  # includes beta0
test.df = nrow(test) - predictors  # degrees of freedom
test.rmse = sqrt(sum((test$VALUE - yHat) ^ 2) / (test.df))
percent.error = (test.rmse - train.rmse) / train.rmse * 100

sum1 = summary(complete.model)
library(DAAG)

CVlm(data=thads, m=5, form.lm=formula, plotit=FALSE); sum1$sigma^2

# since there is a rather small (ratio wise) difference, we can be sure our model
# did no overfit the data!


