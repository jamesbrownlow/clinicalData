
##
##  use fisherXY test to determine if the new vaccine is different from
##  previous vaccines.

#  Data set has 4 categories:
#    group with no vaccine
#    group with just the old vaccine
#    group with both the old and new vaccine
#    group with just the new vaccine
#



#setwd('C:/Users/16617/Documents/AVC/Math115')
clinicalTrial = data.frame(vaxStatus=sample(c('none','first','new','first&new'),
                                            prob=c(0.45, 0.30, 0.10, 0.15), replace=T, size=40000))

for (i in 1:40000){
  if (clinicalTrial$vaxStatus[i] == 'none'){
    clinicalTrial$infected[i] = sample(c('Y','N'),
                                       prob=c(150/10000,1-150/10000))
  }
  if (clinicalTrial$vaxStatus[i] == 'first'){
    clinicalTrial$infected[i] = sample(c('Y','N'),
                                       prob=c(61/10000,1-61/10000))
  }
  if (clinicalTrial$vaxStatus[i] == 'new'){
    clinicalTrial$infected[i] = sample(c('Y','N'),
                                       prob=c(24/10000,1-24/10000))
  }
  if (clinicalTrial$vaxStatus[i] == 'first&new'){
    clinicalTrial$infected[i] = sample(c('Y','N'),
                                       prob=c(25/10000,1-25/10000) )
  }
}  


write.csv(clinicalTrial, file='clinicalTrial.csv')

