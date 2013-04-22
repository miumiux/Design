block<-function(num,blck_size,treat)
{
  set.seed(880523)
	if (num %% length(treat) != 0) stop ("Number of subjects should be a multiplication of treatment")
   blck<-integer(num)
   n<-0

   block_num<-0
   i<-0
   tot<-num/length(treat) #total treatmebt sets
   while(n<tot)
   {
   	size<-sample(blck_size,1)
   	if((n+size)>tot) {size<-tot-n}
   	blck[(n*length(treat)+1):((n+size)*length(treat))]<-sample(size*length(treat))+n*length(treat)
   	block_num[(n+1):(n+size)]<-rep(i+1,size)   	
   	n<-size+n
   i<-i+1
   }
   smpl1<-matrix(blck,num/length(treat),length(treat),byrow=T)
   smpl<-cbind(smpl1,block_num)
	dimnames(smpl)<-list(c(1:tot),c(treat,"block"))
	return(smpl)
}
