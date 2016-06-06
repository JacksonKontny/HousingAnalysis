# The full model is the model with the interaction term.  The reduced model is the
# Model without the interaction term.  Since the F value of the full model vs. the 
# interaction model is large (small p-value), we can conclude that the interaction
# terms are useful additions to our model 
require(effects)

# Plot effects of Person and Bedrms
fit = lm(VALUE ~ PER + BEDRMS + PER:BEDRMS, data=thads)
mean = mean(thads$BEDRMS)
sd = sd(thads$BEDRMS)
plot(effect("PER:BEDRMS", fit,, list(wt=c(mean-sd, mean, mean+sd))), multiline=TRUE)

# Model sees improvement, but we will check if rooms has same improvement
thads$BED_PERSON = thads$PER * thads$BEDRMS
full = lm(VALUE ~ BED_PERSON + BEDRMS + PER, data=thads)
reduced = lm(VALUE ~ BEDRMS + PER, data=thads)
summary(full)
summary(reduced)

# Plot effects of Person and Rooms
fit = lm(VALUE ~ PER + ROOMS + PER:ROOMS, data=thads)
mean = mean(thads$ROOMS)
sd = sd(thads$ROOMS)
plot(effect("PER:ROOMS", fit,, list(wt=c(mean-sd, mean, mean+sd))), multiline=TRUE)

# Rooms is a good interaction term, we will NOT use BEDRMS
thads$ROOMS_PERSON = thads$ROOMS * thads$PER
full = lm(VALUE ~ ROOMS_PERSON + ROOMS + PER, data=thads)
reduced = lm(VALUE ~ ROOMS + PER, data=thads)
summary(full)
summary(reduced)

# TOTSAL * Persons is a useful interaction term
fit = lm(VALUE ~ PER + TOTSAL + PER:TOTSAL, data=thads)
mean = mean(thads$TOTSAL)
sd = sd(thads$TOTSAL)
plot(effect("PER:TOTSAL", fit,, list(wt=c(mean-sd, mean, mean+sd))), multiline=TRUE)

thads$TOTSAL_PERSON = thads$TOTSAL * thads$PER
full = lm(VALUE ~ TOTSAL_PERSON + TOTSAL + PER, data=thads)
reduced = lm(VALUE ~ TOTSAL + PER, data=thads)
summary(full)
summary(reduced)

# Rooms * BEDS is a useful interaction term, lets keep them both
thads$BEDRMS_ROOMS = thads$ROOMS * thads$BEDRMS
fit = lm(VALUE ~ ROOMS + BEDRMS + BEDRMS:ROOMS, data=thads)
mean = mean(thads$ROOMS)
sd = sd(thads$ROOMS)
plot(effect("ROOMS:BEDRMS", fit,, list(wt=c(mean-sd, mean, mean+sd))), multiline=TRUE)

thads$ROOMS_BEDS = thads$ROOMS * thads$BEDRMS
full = lm(VALUE ~ BEDRMS + ROOMS + ROOMS_BEDS, data=thads)
reduced = lm(VALUE ~ BEDRMS + ROOMS, data=thads)
summary(full)
summary(reduced)



# The anova function in each of these shows that the interaction term adds valuable data to the model
