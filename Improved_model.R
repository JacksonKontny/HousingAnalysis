complete.model= lm(
  VALUE ~ 
    ABL80 + 
    AGE1 + 
    APLMED +
    B40s50s + 
    B2000s +
    B2010s + 
    BEDRMS + 
    PER_SQ +
    ROOMS +
    struc1 + 
    struc3 + 
    struc4 + 
    struc5 + 
    TOTSAL_PERSON +     
    UTILITY + 
    UTILITY_SQ +    
    ZINC2 + 
    ZSMHC, 
  data = thads
)
summary(complete.model)

vif(complete.model)
#Vifs are acceptable.

prediction = data.frame(
  ABL80= (.8 * .75 * 70746),
  AGE1=26,
  APLMED= (.75 * 70746),
  B40s50s=0, 
  B2000s=0,
  B2010s=0,
  BEDRMS=1,
  PER_SQ=1,
  ROOMS = 5,
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
