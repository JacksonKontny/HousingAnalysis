data=thads
xvars = c('ABL30', 'ABL50', 'ABL80', 'ABLMED', 'APLMED', 'B40s50s', 'B60s70s', 'B80s', 'B90s', 'B2000s', 'B2010s',
          'BEDRMS', 'census2', 'census3', 'census4', 'GL30', 'GL50', 'GL80', 'GLMED', 'home_age', 'IPOV',
          'L30','L50','L80','LMED','metro2','metro3','metro4','metro5','metro9','MInadequate','OTHERCOST','PER', 'ROOMS', 'SInadequate','struc1','struc2',
          'struc3','struc4','struc5','struc6','tenure1','tenure2','tenure3','TOTSAL','UTILITY','ZINC2','ZSMHC')

# Removed By Model Selection:
# cencus2, cencus3, cencus4, L30, L50, L80, LMED, metro2, metro3, metro4, metro5, metro9, MInadequate, NUNITS, SInadequate, struc6, tenure1, tenure2, tenure3
possible.correlated.vars = c('ABL30', 'ABL50', 'ABL80', 'ABLMED', 'APLMED', 'B2000s', 'B90s', 'B40s50s', 'B60s70s', 'B80s', 'B90s', 'B2000s', 'B2010s',
          'BEDRMS','GL30', 'GL50', 'GL80', 'GLMED', 'home_age', 'IPOV',
          'L30','L50','L80','LMED','OTHERCOST','PER', 'ROOMS', 'struc1','struc2',
          'struc3','struc4','struc5','struc6','TOTSAL','UTILITY','ZINC2','ZSMHC')

thads.data = thads[,new.possible.correlated.vars]
cor(thads.data)
# It looks like variables removed by ModelSelection were not significantly correlated with any other variables.  We can be comfortable that they
# were not removed due to multicolinearity

# lets check for multicolinearity within the pre-filtered model
vif(stepwise.model)
# ZSMHC, ZINC2, UTILITY, TOTSAL, struc#, ROOMS, OTHERCOST, BDecade, home_age, and age are not colinear
# ABL##, APL, BEDRMS, ROOMS GL##, IPOV, PER all contribute redundant information

# Since ABL80 contributes the most of ABL##, APL, GL## (highest AIC), IPOV (all of which are correlated) we can remove the colinear variables to simplify the model
# Since PER is heavily correlated with IPOV, we can maybe remove PER
# Since BEDRMS is heavily correlated with ROOMS, we can remove BEDRMS to simplify the model

# It is always important to check for interaction terms, higher order terms, etc before removing the terms altogether