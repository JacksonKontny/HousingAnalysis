# The full model is the model with the interaction term.  The reduced model is the
# Model without the interaction term.  Since the F value of the full model vs. the 
# interaction model is large (small p-value), we can conclude that the interaction
# terms are useful additions to our model 

# Model sees improvement, but we will check if rooms has same improvement
thads$BED_PERSON = thads$PER * thads$BEDRMS
full = lm(VALUE ~ BED_PERSON + BEDRMS + PER, data=thads)
reduced = lm(VALUE ~ BEDRMS + PER, data=thads)
anova(full, reduced)

# Rooms is a good interaction term, we will continue to NOT use BEDRMS
thads$ROOMS_PERSON = thads$ROOMS * thads$PER
full = lm(VALUE ~ ROOMS_PERSON + ROOMS + PER, data=thads)
reduced = lm(VALUE ~ ROOMS + PER, data=thads)
anova(full, reduced)

# TOTSAL * Persons is a useful interaction term
thads$TOTSAL_PERSON = thads$TOTSAL * thads$PER
full = lm(VALUE ~ TOTSAL_PERSON + TOTSAL + PER, data=thads)
reduced = lm(VALUE ~ TOTSAL + PER, data=thads)
anova(full, reduced)

# Rooms * BEDS is a useful interaction term, lets keep them both
thads$ROOMS_BEDS = thads$ROOMS * thads$BEDRMS
full = lm(VALUE ~ BEDRMS + ROOMS + ROOMS_BEDS, data=thads)
reduced = lm(VALUE ~ BEDRMS + ROOMS, data=thads)
anova(full, reduced)

# The anova function in each of these shows that the interaction term adds valuable data to the model
