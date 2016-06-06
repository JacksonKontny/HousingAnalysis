  thads13 = read.csv('thads/thads2013n.txt')
  thads13$dataset_year = 2013
  #Load only 2013 data set.
  thads = thads13
  #thads11 = read.csv('L:/DePaul/CSC-324/R_projects/HousingAnalysis-master/thads2011.txt')
  #thads11$dataset_year = 2011
  #thads = merge(thads13, thads11, all=TRUE)
  library(sqldf)
  sqldf("SELECT DISTINCT VALUE FROM thads WHERE VALUE < 0")
  sqldf("SELECT COUNT(*) FROM thads WHERE VALUE < 0")
  #Remove rows where VALUE is equal to -6
  thads = subset(thads, VALUE!=-6)
  
  #Remove rows where Total Salary is less than zero
  sqldf("SELECT COUNT(*) FROM thads WHERE TOTSAL < 0")
  #Remove rows where Total Salary is less than zero
  thads = subset(thads, TOTSAL!=-9)
  
  sqldf("SELECT COUNT(*) FROM thads WHERE ZSMHC < 0")
  #Remove rows where Monthly Housing Cost (ZSMHC) is less than zero
  thads = subset(thads, ZSMHC!=-6)
  
  # Outliers - We could remove these, but we can't say why they exist
  # sqldf("SELECT DISTINCT VALUE FROM thads WHERE VALUE > 2500000")
  # sqldf("SELECT COUNT(*) FROM thads WHERE VALUE = 2520000")
  # sqldf("SELECT COUNT(*) FROM thads WHERE VALUE BETWEEN 1000000 AND 1500000")
  # sqldf("SELECT COUNT(*) VALUE FROM thads WHERE VALUE > 300000")
  # thads = subset(thads, VALUE <= 300000)
  
  thads$home_age = thads$dataset_year - thads$BUILT
  save(thads, file='thads.Rda')
  
  options(scipen=5)
  par(cex.lab=.5)
  par(cex.axis=.75)
  boxplot(thads$VALUE, yaxt="n", main = "2013 Market Value")
  axis(2, at=axTicks(2), labels=sprintf("$%s", axTicks(2)), las=1)