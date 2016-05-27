# You need to have the 'thads' dataset
load("~/Documents/DePaul/CSC 423/Final Project/thads.Rda")

# coded variables we will use include:
# AGE1, ZADEQ, REGION, METRO3, BDRMS, BUILT, TYPE/STRUCTURETYPE, ROOMS, TENURE/OWNRENT
# NUNITS, PER

# Perform the coding:

# AGE1
thads$Age1 = ifelse(thads$AGE1 >= 13 & thads$AGE1 <= 33, 1, 0)
thads$Age2 = ifelse(thads$AGE1 >= 34 & thads$AGE1 <= 53, 1, 0)
thads$Age3 = ifelse(thads$AGE1 >= 54 & thads$AGE1 <= 73, 1, 0)
thads$Age4 = ifelse(thads$AGE1 >= 74 & thads$AGE1 <= 93, 1, 0)

# Adequacy
thads$Adequate = ifelse(thads$ZADEQ == 1, 1, 0)
thads$MInadequate = ifelse(thads$ZADEQ == 2, 1, 0)
thads$SInadequate = ifelse(thads$ZADEQ == 3, 1, 0)

# Bedrooms
thads$Bed1 = ifelse(thads$BEDRMS == 1, 1, 0)
thads$Bed2 = ifelse(thads$BEDRMS == 2, 1, 0)
thads$Bed3 = ifelse(thads$BEDRMS == 3, 1, 0)
thads$Bed4 = ifelse(thads$BEDRMS == 4, 1, 0)
thads$Bed5 = ifelse(thads$BEDRMS == 5, 1, 0)
thads$Bed6 = ifelse(thads$BEDRMS == 6, 1, 0)
thads$Bed7 = ifelse(thads$BEDRMS == 7, 1, 0)
thads$Bed8 = ifelse(thads$BEDRMS == 8, 1, 0)

# Region -> census regions
thads$census2 = ifelse(thads$REGION==2, 1, 0)
thads$census3 = ifelse(thads$REGION==3, 1, 0)
thads$census4 = ifelse(thads$REGION==4, 1, 0)

# Metro3 -> we don't know what these all mean
thads$metro2 = ifelse(thads$METRO3==2, 1, 0)
thads$metro3 = ifelse(thads$METRO3==3, 1, 0)
thads$metro4 = ifelse(thads$METRO3==4, 1, 0)
thads$metro5 = ifelse(thads$METRO3==5, 1, 0)
thads$metro9 = ifelse(thads$METRO3==9, 1, 0)

# Structure Type
thads$struc1 = ifelse(thads$STRUCTURETYPE==1)
thads$struc2 = ifelse(thads$STRUCTURETYPE==2)
thads$struc3 = ifelse(thads$STRUCTURETYPE==3)
thads$struc4 = ifelse(thads$STRUCTURETYPE==4)
thads$struc5 = ifelse(thads$STRUCTURETYPE==5)
thads$struc6 = ifelse(thads$STRUCTURETYPE==6)

# Tenure
thads$tenure1 = ifelse(thads$TENURE==1, 1, 0)
thads$tenure2 = ifelse(thads$TENURE==2, 1, 0)
thads$tenure3 = ifelse(thads$TENURE==3, 1, 0)

# Year Built
thads$B2010s = ifelse(thads$BUILT > 2009, 1, 0)
thads$B2000s = ifelse(thads$BUILT >= 2000 & thads$BUILT <= 2009, 1, 0)
thads$B90s= ifelse(thads$BUILT >= 1990 & thads$BUILT <= 1999, 1, 0)
thads$B80s = ifelse(thads$BUILT >= 1980 & thads$BUILT <= 1989, 1, 0)
thads$B60s70s = ifelse(thads$BUILT >= 1960 & thads$BUILT <= 1979, 1, 0)
thads$B40s50s = ifelse(thads$BUILT >= 1940 & thads$BUILT <= 1959, 1, 0)