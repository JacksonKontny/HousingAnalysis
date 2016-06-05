library(ggplot2)

# Linear
ggplot(data=thads, aes(x=ABLMED, y=VALUE)) + geom_point() +
  xlab('Income Adjusted for # of Bedrooms')+
  ylab('Value of Unit') +
  ggtitle('Income Adjusted for # of Bedrooms (ABLMED) vs. Value')

# Linear
ggplot(data=thads, aes(x=LMED, y=VALUE)) + geom_point() +
  xlab('Average Income Adjusted')+
  ylab('Value of Unit') +
  ggtitle('Average Income Adjusted by HUD vs. Value')

# Linear
ggplot(data=thads, aes(x=AGE1, y=VALUE)) + geom_point() +
  xlab('Age of Head Of Household')+
  ylab('Value of Unit') +
  ggtitle('Age of Head of Household (AGE1)) vs. Value')

# Possibly Quadratic
ggplot(data=thads, aes(x=factor(BEDRMS), y=VALUE)) + geom_boxplot() +
  xlab('Number Of Bed Rooms')+
  ylab('Value of Unit') +
  ggtitle('Number of Bedrooms (BEDRMS) vs. Value')

# Linear
ggplot(data=thads, aes(x=factor(home_age), y=VALUE)) + geom_boxplot() + 
  xlab('Age of Home in Years')+
  ylab('Value of Unit') +
  ggtitle('Home Age vs. Value')

# Linear
ggplot(data=thads, aes(x=ZINC2, y=VALUE)) + geom_point() +
xlab('Household Income')+
  ylab('Value of Unit') +
  ggtitle('Household Income (ZINC) vs. Value')

ggplot(data=thads, aes(x=OTHERCOST, y=VALUE)) + geom_point() +
  xlab('Other Costs')+
  ylab('Value of Unit') +
  ggtitle('Other Costs (OTHERCOST) vs. Value')

# Quadratic?  Transformation may help
ggplot(data=thads, aes(x=factor(PER), y=VALUE)) + geom_boxplot() +
  xlab('Persons in Household')+
  ylab('Value of Unit') +
  ggtitle('Number of Persons (PER) vs. Value')

ggplot(data=thads, aes(x=factor(ROOMS), y=VALUE)) + geom_boxplot() +
  xlab('Rooms in Household')+
  ylab('Value of Unit') +
  ggtitle('Rooms in Household (ROOMS) vs. Value')

# Linear
ggplot(data=thads, aes(x=TOTSAL, y=VALUE)) + geom_point() +
  xlab('Total Salary') +
  ylab('Value of Unit') +
  ggtitle('Total Salary (TOTSAL) vs. Value')

# Linear or quadratic
ggplot(data=thads, aes(x=UTILITY, y=VALUE)) + geom_point() + 
  xlab('Utility Costs') +
  ylab('Value of Unit') +
  ggtitle('Utility Costs (UTILITY) vs. Value')

# Linear
ggplot(data=thads, aes(x=ZSMHC, y=VALUE)) + geom_point() +
  xlab('Other Household Costs') +
  ylab('Value of Unit') +
  ggtitle('Other Household Costs (ZSMHC)) vs. Value')

ggplot(data=thads, aes(x=ROOMS, y=BEDRMS)) + geom_point() +
  xlab('ROOMS') +
  ylab('BEDS') +
  ggtitle('Number of Rooms Vs Number of Beds')

ggplot(data=thads, aes(x=ROOMS, y=PER)) + geom_point() +
  xlab('Rooms') +
  ylab('Persons') +
  ggtitle('Number of Rooms Vs Number of Persons')

ggplot(data=thads, aes(x=factor(PER), y=TOTSAL)) + geom_boxplot() +
  xlab('Persons') +
  ylab('Total Salary') +
  ggtitle('Total Salary Vs Number of Persons')

ggplot(data=thads, aes(x=NUNITS, y=VALUE)) + geom_point() +
  xlab('Number Of Units in Building') +
  ylab('Value of Unit') +
  ggtitle('Number of Units in Structure vs Value of Unit')

ggplot(data=thads, aes(x=IPOV, y=VALUE)) + geom_point() +
  xlab('Poverty Income') +
  ylab('Value of Unit') +
  ggtitle('Poverty Income vs Value of Unit')

  
  



# Possible Quadratic Variables:
# Rooms, Per, BEDRMS, UTILITY

# Possible Transformation Variables:
# IPOV, NUNITS, ROOMS, BEDRMS
