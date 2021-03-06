degree=read.csv(file='degree',header=FALSE, sep=':')
degreediscount=read.csv(file='degreediscount', header=FALSE,sep=':')
edgesampling=read.csv(file='edgesampling', header=FALSE,sep=':')
pagerank=read.csv(file='pagerank', header=FALSE,sep=':')
random=read.csv(file='random', header=FALSE,sep=':')
multicycle=read.csv(file='multicycle', header=FALSE,sep=':')
singlecycle=read.csv(file='singlecycle', header=FALSE,sep=':')
greedy = read.csv(file='greedy.txt', header=FALSE)


degree[2]=degree[2]/1000
degreediscount[2]=degreediscount[2]/1000
edgesampling[2]=edgesampling[2]/1000
pagerank[2]=pagerank[2]/1000
random[2]=random[2]/1000
multicycle[2]=multicycle[2]/1000
singlecycle[2]=singlecycle[2]/1000
greedy=greedy/1000
greedy = cbind(1:100,greedy)

plot(edgesampling, type="l" ,xlab='Seed Size', ylab='Time (s)', lwd = 3,lty=1, ylim=c(0,6000))
lines(degree, type="l" , lwd = 3,lty=2,)
lines(degreediscount, type="l" , lwd = 3,lty=3)
lines(pagerank, type="l" ,lwd = 3, lty=4)
lines(random, type="l" ,lwd = 3, lty=5)
lines(multicycle, type="l" ,lwd = 3, lty=6)
lines(singlecycle, type="l" ,lwd = 3, lty="24")
lines(greedy, lwd = 3,lty="26")


legend('topleft',legend = c("edgesampling","degree","degreediscount","pagerank","random","multicycle","singlecycle","greedy"), lwd = 3,lty =c(1,2,3,4,5,6,24,26),cex=0.9,ncol = 2,bty = "n")

