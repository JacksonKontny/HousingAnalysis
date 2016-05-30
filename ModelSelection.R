library(MASS)
full.model= lm(
  VALUE~ABL30 + # ABL is income adjusted for number of bedrooms
    ABL50 +
    ABL80 + 
    ABLMED +
    Age1 + # 13 - 33
    Age2 + # 34 - 53
    Age3 + # 54 - 73
    Age4 + # 74 - 93
    APLMED + # APL is income adjusted for persons in the household
    # Assited +
    B40s50s + # What decade was the home built
    B60s70s +
    B80s +
    B90s +
    B2000s +
    B2010s +
    Bed1 + # Number of bedrooms
    Bed2 +
    Bed3 +
    Bed4 +
    Bed5 +
    Bed7 +
    Bed7 +
    Bed8 +
    census2 + # Census region
    census3 +
    census4 +
    GL30 + # 
    GL50 +
    GL80 +
    GLMED +
    IPOV + # Poverty income in the area
    L30 +
    L50 +
    L80 +
    LMED +
    metro2 +
    metro3 +
    metro4 +
    metro5 +
    metro9 +
    MInadequate +
    OTHERCOST +
    PER +
    SInadequate +
    struc1 +
    struc2 +
    struc3 +
    struc4 +
    struc5 +
    struc6 +
    tenure1 +
    tenure2 +
    tenure3 +
    TOTSAL +
    UTILITY +
    ZINC2 +
    ZSMHC,
  data=thads
)
stepwise.model = step(full.model, direction='both')

# All Possible Regressions Selection
library(leaps)
yvar = c('VALUE')
xvars = c('ABL30',
          'ABL50',
          'ABL80',
          'ABLMED',
          'Age1', # 13 - 33
          'Age2', # 34 - 53
          'Age3', # 54 - 73
          'Age4', # 74 - 93
          'APLMED', # APL is income adjusted for persons in the household
          # Assited +
          'B40s50s', # What decade was the home built
          'B60s70s', 
          'B80s', 
          'B90s', 
          'B2000s', 
          'B2010s', 
          'Bed1',  # Number of bedrooms
          'Bed2', 
          'Bed3',
          'Bed4', 
          'Bed5', 
          'Bed7', 
          'Bed7', 
          'Bed8', 
          'census2', # Census region
          'census3', 
          'census4', 
          'GL30', 
          'GL50', 
          'GL80', 
          'GLMED', 
          'IPOV',  # Poverty income in the area
          'L30',
          'L50',
          'L80',
          'LMED',
          'metro2',
          'metro3',
          'metro4',
          'metro5',
          'metro9',
          'MInadequate',
          'OTHERCOST',
          'PER'
          'SInadequate',
          'struc1',
          'struc2',
          'struc3',
          'struc4',
          'struc5',
          'struc6',
          'tenure1',
          'tenure2',
          'tenure3',
          'TOTSAL',
          'UTILITY',
          'ZINC2',
          'ZSMHC')

all.possible.model=leaps(x=thads[,xvars], y=thads[,yvar], names=xvars, nbest=1, method="adjr2")
