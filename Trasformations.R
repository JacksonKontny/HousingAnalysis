#Transformations
# From Quick Plots:
# Possible Quadratic Variables:
# Rooms, Per, BEDRMS, UTILITY

# Possible Transformation Variables:
# IPOV, NUNITS

# It appears the log term is not a useful predictor
thads$LOG_NUNITS = log(-1 * thads$NUNITS)
fit = lm(VALUE ~ EXP_NUNITS, data=thads)
summary(fit)

# SQRT NUNITS - sqrt transformation will imrpove the model, but not enough
thads$NUNITS_SQRT = sqrt(thads$NUNITS)
full = lm(VALUE ~ NUNITS_SQRT + NUNITS, data=thads)
partial = lm(VALUE ~ NUNITS, data=thads)
anova(full, partial)
summary(full)

# INV NUNITS - Inverse does not improve model
thads$NUNITS_INV = 1/thads$NUNITS
full = lm(VALUE ~ NUNITS_INV + NUNITS, data=thads)
partial = lm(VALUE ~ NUNITS, data=thads)
anova(full, partial)

# Quadratic PER - Looks like quadratic term improves model
thads$PER_SQ = thads$PER^2
full = lm(VALUE ~ PER + PER_SQ, data=thads)
partial = lm(VALUE ~ PER, data=thads)
anova(full, partial)

# Quadratic Rooms - adding quadratic term will improve model
thads$ROOMS_SQ = thads$ROOMS^2
full = lm(VALUE ~ ROOMS + ROOMS_SQ, data=thads)
partial = lm(VALUE ~ ROOMS, data=thads)
anova(full, partial)

# Quadratic Bedrooms - adding quadratic term will improve model
thads$BEDRMS_SQ = thads$BEDRMS^2
full = lm(VALUE ~ BEDRMS + BEDRMS_SQ, data=thads)
partial = lm(VALUE ~ BEDRMS, data=thads)
anova(full, partial)

# Quadratic UTILITY - adding quadratic term will improve model
thads$UTILITY_SQ = thads$UTILITY^2
full = lm(VALUE ~ UTILITY + UTILITY_SQ, data=thads)
partial = lm(VALUE ~ UTILITY, data=thads)
anova(full, partial)

# SQRT IPOV - adding sqrt term will imrpove the model, but the Adj RSQ is still low
thads$IPOV_SQRT = sqrt(thads$IPOV)
full = lm(VALUE ~ IPOV_SQRT + IPOV, data=thads)
partial = lm(VALUE ~ IPOV, data=thads)
anova(full, partial)
summary(full)

# INV IPOV - Inverse improves model more than sqrt (comparing adj rsq)
thads$IPOV_INV = 1/thads$IPOV
full = lm(VALUE ~ IPOV_INV + IPOV, data=thads)
partial = lm(VALUE ~ IPOV, data=thads)
anova(full, partial)
summary(full)

fit = lm(VALUE ~ )