n <- 10000  # Create number of trials
m <- 0      # Create running tally of mean life expectancy 
for (i in 1:n){
  x <- rnorm(1,mean=10,sd=1) # Create first component fail time
  y <- rnorm(1,mean=10,sd=1) # Create second component fail time
  w <- min(x,y)              # Find product failure
  m <- m+w/n                 # weight product fail time by n 
}
m

