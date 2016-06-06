require(ggplot2)
#Transformations
# From Quick Plots:
# Possible Quadratic Variables:
# Rooms, Per, BEDRMS, UTILITY

# Possible Transformation Variables:
# IPOV, NUNITS

# SQRT NUNITS - sqrt transformation does not improve model
NUNITS_SQRT = sqrt(thads$NUNITS)
thads = cbind(thads, NUNITS_SQRT)
ggplot(data=thads, aes(x=NUNITS_SQRT, y=VALUE)) + geom_point() +
  xlab('Square Root of Number of Units')+
  ylab('Value of Unit') +
  ggtitle('Square Root of Number Of Units vs. Value')
tranformed = lm(VALUE ~ NUNITS_SQRT, data=thads)
regular = lm(VALUE ~ NUNITS, data=thads)
summary(transformed)
summary(regular)

# INV NUNITS - Inverse does not improve model
thads$NUNITS_INV = 1/thads$NUNITS
ggplot(data=thads, aes(x=NUNITS_INV, y=VALUE)) + geom_point() +
  xlab('Inverse of Number of Units')+
  ylab('Value of Unit') +
  ggtitle('Inverse of Number Of Units vs. Value')
transformed = lm(VALUE ~ NUNITS_INV, data=thads)
regular = lm(VALUE ~ NUNITS, data=thads)
summary(transformed)
summary(regular)

# INV home_age - Inverse does not improve model
thads$home_age_INV = 1/thads$home_age
ggplot(data=thads, aes(x=home_age_INV, y=VALUE)) + geom_point() +
  xlab('Inverse Age of Unit')+
  ylab('Value of Unit') +
  ggtitle('Inverse Age Of Unit vs. Value')
transformed = lm(VALUE ~ NUNITS_INV, data=thads)
regular = lm(VALUE ~ NUNITS, data=thads)
summary(transformed)
summary(regular)

# SQRT IPOV - adding sqrt term will imrpove the model!
thads$IPOV_SQRT = sqrt(thads$IPOV)
ggplot(data=thads, aes(x=home_age_INV, y=VALUE)) + geom_point() +
  xlab('Square Root of Poverty Income')+
  ylab('Value of Unit') +
  ggtitle('Square Root of Poverty Income vs. Value')
transformed = lm(VALUE ~ IPOV_SQRT, data=thads)
regular = lm(VALUE ~ IPOV, data=thads)
summary(transformed)
summary(regular)

# Quadratic PER - Looks like quadratic term improves model
thads$PER_SQ = thads$PER^2
full = lm(VALUE ~ PER + PER_SQ, data=thads)
partial = lm(VALUE ~ PER, data=thads)
summary(full)
summary(partial)

# Quadratic Rooms - adding quadratic term will improve model
thads$ROOMS_SQ = thads$ROOMS^2
full = lm(VALUE ~ ROOMS + ROOMS_SQ, data=thads)
partial = lm(VALUE ~ ROOMS, data=thads)
summary(full)
summary(partial)

# Quadratic Bedrooms - adding quadratic term will improve model
thads$BEDRMS_SQ = thads$BEDRMS^2
full = lm(VALUE ~ BEDRMS + BEDRMS_SQ, data=thads)
partial = lm(VALUE ~ BEDRMS, data=thads)
summary(full)
summary(partial)

# Quadratic UTILITY - adding quadratic term will improve model
thads$UTILITY_SQ = thads$UTILITY^2
full = lm(VALUE ~ UTILITY + UTILITY_SQ, data=thads)
partial = lm(VALUE ~ UTILITY, data=thads)
summary(full)
summary(partial)
