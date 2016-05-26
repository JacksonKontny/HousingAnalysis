thads13 = read.csv('thads2013n.txt')
thads11 = read.csv('thads2011.txt')
thads = merge(thads13, thads11, all=TRUE)
save(thads, 'thads.Rda')

