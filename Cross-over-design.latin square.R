library(crossdes)

# Get a Williams size 4 latin square
pool <- data.frame(williams(4))
pattern.id<-c(1,2,3,4)
assgn<-data.frame(pattern.id,pool)
names(assgn) <- c('pattern.id','period1', 'period2', 'period3', 'period4')

#Random the sequence of each pattern while ensure balanceness
pattern<-sample(rep(c(1,2,3,4),7),28)
patient<-data.frame(sequence=c(1:28),pattern.id=pattern)

# Merge sequence with 4 level latin square
design<-merge(patient,assgn)
design<-design[order(design$sequence),]

write.csv(design, file = 'hw6.csv', row.names = F, quote = F)


