library(ggplot2)
# Linear
ggplot(data=thads, aes(x=ZINC2, y=VALUE)) + geom_point()
# Maybe Transformation will help
ggplot(data=thads, aes(x=IPOV, y=VALUE)) + geom_point()
# Linear
ggplot(data=thads, aes(x=APLMED, y=VALUE)) + geom_point()
# Piecewise Linear ( 1 - 30 and 30 - 75 and 75 onward)
ggplot(data=thads, aes(x=AGE1, y=VALUE)) + geom_point()
ggplot(data=thads, aes(x=factor(AGE1), y=VALUE)) + geom_violin()
# Transformation may help
ggplot(data=thads, aes(x=NUNITS, y=VALUE)) + geom_point()
# Quadratic?  Transformation may help
ggplot(data=thads, aes(x=PER, y=VALUE)) + geom_point()
# Linear, perhaps quadratic or even cubic!
ggplot(data=thads, aes(x=ROOMS, y=VALUE)) + geom_point()
ggplot(data=thads, aes(x=factor(ROOMS), y=VALUE)) + geom_boxplot()
# Linear, perhaps quadratic or even cubic!
ggplot(data=thads, aes(x=BEDRMS, y=VALUE)) + geom_point()
ggplot(data=thads, aes(x=factor(BEDRMS), y=VALUE)) + geom_boxplot()
# Linear
ggplot(data=thads, aes(x=TOTSAL, y=VALUE)) + geom_point()
# Linear or quadratic
ggplot(data=thads, aes(x=UTILITY, y=VALUE)) + geom_point()
ggplot(data=thads, aes(x=BUILT, y=VALUE)) + geom_point()
# Linear or quadratic
ggplot(data=thads, aes(x=factor(BUILT), y=VALUE)) + geom_boxplot()
ggplot(data=thads, aes(x=METRO3, y=VALUE)) + geom_point()
ggplot(data=thads, aes(x=factor(METRO3), y=VALUE)) + geom_violin()
ggplot(data=thads, aes(x=factor(STRUCTURETYPE), y=VALUE)) + geom_boxplot()
# Linear
ggplot(data=thads, aes(x=ZSMHC, y=VALUE)) + geom_point()
