#Transformations

#Inverse transformation
# > Data <- cbind(Data, Data$GPA^2)
# To take its square root, type:
#  > Data <- cbind(Data, sqrt(Data$GPA) )
# To take its natural logarithm, type:
#  > Data <- cbind(Data, log(Data$GPA) )
# To take its common logarithm, type:
#   > Data <- cbind(Data, log10(Data$GPA) )
# To take its reciprocal, type:
#   > Data <- cbind(Data, 1/Data$GPA )
# To take its reciprocal square root, type:
#   > Data <- cbind(Data, 1/sqrt(Data$GPA) )

# IPOV
thads <- cbind(thads, sqrt(thads$IPOV) )

ggplot(data=thads, aes(x=IPOV, y=VALUE)) + geom_point() +
  xlab('Poverty Income') +
  ylab('Value of Unit') +
  ggtitle('Poverty Income vs Value of Unit')

# NUNITS
thads <- cbind(thads, log(thads$NUNITS) )

ggplot(data=thads, aes(x=NUNITS, y=VALUE)) + geom_point() +
  xlab('Number Of Units in Building') +
  ylab('Value of Unit') +
  ggtitle('Number of Units in Structure vs Value of Unit')

# ROOMS
thads <- cbind(thads, sqrt(thads$ROOMS) )

ggplot(data=thads, aes(x=ROOMS, y=PER)) + geom_point() +
  xlab('Rooms') +
  ylab('Persons') +
  ggtitle('Number of Rooms Vs Number of Persons')


# BEDRMS
thads <- cbind(thads, sqrt(thads$BEDRMS) )

ggplot(data=thads, aes(x=factor(BEDRMS), y=VALUE)) + geom_boxplot() +
  xlab('Number Of Bed Rooms')+
  ylab('Value of Unit') +
  ggtitle('Number of Bedrooms (BEDRMS) vs. Value')


#Age
thads <- cbind(thads, 1/sqrt(thads$AGE1) )

ggplot(data=thads, aes(x=AGE1, y=VALUE)) + geom_point() +
  xlab('Age of Head Of Household')+
  ylab('Value of Unit') +
  ggtitle('Age of Head of Household (AGE1)) vs. Value')
