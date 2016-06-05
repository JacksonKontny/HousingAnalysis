thads13 = read.csv('/Users/Daniel/Desktop/thads/thads2013n.txt')
thads13$dataset_year = 2013
<<<<<<< HEAD
thads11 = read.csv('/Users/Daniel/Desktop/thads/thads2011.txt')
thads11$dataset_year = 2011
thads = merge(thads13, thads11, all=TRUE)
=======
#thads11 = read.csv('thads/thads2011.txt') #This set will increase variability.  Use 2013 set only.
#thads11$dataset_year = 2011
#thads = merge(thads13, thads11, all=TRUE)
thads = thads13
>>>>>>> origin/master
thads = subset(thads, VALUE!=-6)
thads = subset(thads, TOTSAL!=-9)
thads = subset(thads, ZSMHC!=-6)
thads$home_age = thads$dataset_year - thads$BUILT
save(thads, file='thads.Rda')
