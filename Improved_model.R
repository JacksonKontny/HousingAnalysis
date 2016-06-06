m = lm(
  VALUE ~ 
    ABL80 + 
    AGE1 + 
    B40s50s + 
    B2000s +
    B2010s + 
    BEDRMS + 
    PER +
    ROOMS +
    struc1 + 
    struc3 + 
    struc4 + 
    struc5 + 
    TOTSAL +     
    UTILITY + 
    ZINC2 + 
    ZSMHC, 
  data = thads
)
summary(m)

vif(complete.model)
#Vifs are acceptable.

prediction = data.frame(
  ABL80= (.8 * .75 * 70746),
  AGE1=26,
  B40s50s=0, 
  B2000s=0,
  B2010s=0,
  BEDRMS = 2,
  PER_SQ=1,
  ROOMS = 6,
  struc1=0,
  struc3=1,
  struc4=0,
  struc5=0,
  TOTSAL=70746,
  TOTSAL_PERSON=70746,
  UTILITY=40,
  UTILITY_SQ=1600,
  ZINC2=70746,
  ZSMHC=1100
)
predict(complete.model, prediction, interval="confidence", level=.95)


# Heteroscedasticity
alpha = .05
median = median(thads$ABL80); median
sample1 = thads[thads$ABL80<median,]  # rows where EXP less than median
sample2 = thads[thads$ABL80>=median,]


model1= lm(
  VALUE ~ 
    ABL80 + 
    AGE1 + 
    B40s50s + 
    B2000s +
    B2010s + 
    BEDRMS + 
    PER +
    ROOMS +
    struc1 + 
    struc3 + 
    struc4 + 
    struc5 + 
    TOTSAL +     
    UTILITY + 
    ZINC2 + 
    ZSMHC, 
  data = sample1
)
model2= lm(
  VALUE ~ 
    ABL80 + 
    AGE1 + 
    B40s50s + 
    B2000s +
    B2010s + 
    BEDRMS + 
    PER +
    ROOMS +
    struc1 + 
    struc3 + 
    struc4 + 
    struc5 + 
    TOTSAL +     
    UTILITY + 
    ZINC2 + 
    ZSMHC, 
  data = sample2
)

df1 = summary(model1)$df[2]
mse1 = summary(model1)$sigma ^ 2
df1; 

df2 = summary(model2)$df[2]
mse2 = summary(model2)$sigma ^ 2
df2; 

if (mse1 > mse2) {
  f = mse1 / mse2
  num.df = df1
  den.df = df2
} else {
  f = mse2 / mse1
  num.df = df2
  den.df = df1
}

f; num.df; den.df

cv = qf(1-(alpha/2), df1=num.df, df2=den.df)
cv

pvalue = (1 - pf(f, df1=num.df, df2=den.df))
pvalue = pvalue * 2  # For two-tailed test only.
pvalue

if (pvalue < alpha) {
  print ("Reject H0. There IS evidence of heteroscedasticity.")
} else {
  print ("Do not reject H0. There is insufficient evidence of heteroscedasticity. Variances appear to be equal.")
}




#outliers and influential observations
standardized.residuals = rstandard(m)
print(standardized.residuals)

plot(thads$ABL80, standardized.residuals, main="Standardized Residuals vs. ABL80", xlab="ABL80", ylab="Standardized residuals", col="blue", lwd=2)
abline(h=0, col="red", lwd=2, lty=2)

plot(thads$B40s50s, standardized.residuals, main="Standardized Residuals vs. B40s50s", xlab="B40s50s", ylab="Standardized residuals", col="blue", lwd=2)
abline(h=0, col="red", lwd=2, lty=2)

plot(thads$B2000s, standardized.residuals, main="Standardized Residuals vs. B2000s", xlab="B2000s", ylab="Standardized residuals", col="blue", lwd=2)
abline(h=0, col="red", lwd=2, lty=2)

plot(thads$B2010s, standardized.residuals, main="Standardized Residuals vs. B2010s", xlab="B2010s", ylab="Standardized residuals", col="blue", lwd=2)
abline(h=0, col="red", lwd=2, lty=2)

plot(thads$BEDRMS, standardized.residuals, main="Standardized Residuals vs. BEDRMS", xlab="BEDRMS", ylab="Standardized residuals", col="blue", lwd=2)
abline(h=0, col="red", lwd=2, lty=2)

plot(thads$PER, standardized.residuals, main="Standardized Residuals vs. PER", xlab="PER", ylab="Standardized residuals", col="blue", lwd=2)
abline(h=0, col="red", lwd=2, lty=2)

plot(thads$struc1, standardized.residuals, main="Standardized Residuals vs. struc1", xlab="struc1", ylab="Standardized residuals", col="blue", lwd=2)
abline(h=0, col="red", lwd=2, lty=2)

plot(thads$struc3, standardized.residuals, main="Standardized Residuals vs. struc3", xlab="struc3", ylab="Standardized residuals", col="blue", lwd=2)
abline(h=0, col="red", lwd=2, lty=2)

plot(thads$struc4, standardized.residuals, main="Standardized Residuals vs. struc4", xlab="struc4", ylab="Standardized residuals", col="blue", lwd=2)
abline(h=0, col="red", lwd=2, lty=2)

plot(thads$struc5, standardized.residuals, main="Standardized Residuals vs. struc5", xlab="struc5", ylab="Standardized residuals", col="blue", lwd=2)
abline(h=0, col="red", lwd=2, lty=2)

plot(thads$TOTSAL, standardized.residuals, main="Standardized Residuals vs. TOTSAL", xlab="TOTSAL", ylab="Standardized residuals", col="blue", lwd=2)
abline(h=0, col="red", lwd=2, lty=2)

plot(thads$UTILITY, standardized.residuals, main="Standardized Residuals vs. UTILITY", xlab="UTILITY", ylab="Standardized residuals", col="blue", lwd=2)
abline(h=0, col="red", lwd=2, lty=2)

plot(thads$ZINC2, standardized.residuals, main="Standardized Residuals vs. ZINC2", xlab="ZINC2", ylab="Standardized residuals", col="blue", lwd=2)
abline(h=0, col="red", lwd=2, lty=2)

plot(thads$ZSMHC, standardized.residuals, main="Standardized Residuals vs. ZSMHC", xlab="ZSMHC", ylab="Standardized residuals", col="blue", lwd=2)
abline(h=0, col="red", lwd=2, lty=2)

