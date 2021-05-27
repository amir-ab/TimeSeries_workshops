###############################
##########TP2-Application n°2######
###############################
#Q°1
data<-read.table(file=file.choose(),header=TRUE)
data
Ap.Ac<-ts(data, start=c(1996,1), freq=4)
class(Ap.Ac)
head(Ap.Ac)
str(Ap.Ac)
############
#Q°2
plot(Ap.Ac)
############
#Q°3
acf(Ap.Ac,type="correlation")
############
#Q°4
d1<-decompose(Ap.Ac)
names(d1)
plot(d1)
head(d1$random)
plot(d1$random)#representations graphiques des residus
acf(d1$random,na.action=na.pass)#correction des valeur manquantes


 









