complete.model= lm(
  VALUE ~ 
    ABL80 + 
    AGE1 + 
    APLMED +
    B40s50s + 
    B2000s +
    B2010s + 
    BEDRMS + 
    PER +
    PER_SQ +
    ROOMS +
    ROOMS_BEDS +    
    ROOMS_PERSON +
    ROOMS_SQ +    
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

prediction = data.frame(ABL80= (.8 * .75 * 70746),
                        AGE1=26,
                        APLMED= (.75 * 70746),
                        B40s50s=0, 
                        B2000s=0,
                        B2010s=0,
                        BEDRMS=1,
                        ROOMS_BEDS=2,
                        ROOMS_PERSON=2,
                        PER=1,
                        PER_SQ=1,
                        ROOMS=2,
                        ROOMS_SQ=4,
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
