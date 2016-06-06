prediction = data.frame(ABL80=c(.8 * .75 * 70746),
                            AGE1=35,
                            B40s50s=0,
                            B60s70s=1,
                            BEDRMS=2,
                            BEDRMS_ROOMS=6,
                            IPOV_SQRT=sqrt(30000),
                            OTHERCOST=0,
                            PER=2,
                            PER_SQ=4,
                            ROOMS=3,
                            ROOMS_SQ=9,
                            struc1=1,
                            struc3=0,
                            struc4=0,
                            struc5=0,
                            TOTSAL=70746,
                            UTILITY=50,
                            UTILITY_SQ=50^2,
                            ZINC2=70746,
                            ZSMHC=1100
                        )
predict(complete.model, prediction, interval="confidence", level=.95)

# My Single apartment is predicted to be between 61011 and 73442 dollars.  
# Seems low
