#Add two numbers
#Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
#Output: 7 -> 0 -> 8
#Explanation: 342 + 465 = 807

addtwonumber <- function(a,b) {
  n <- max(length(a), length(b))
  c <- rep(NA, n)
  j <- 0
  
  for(i in 1:n) {
    x <- a[i] + b[i] + j
    c[i] <- ifelse(x<10, x, x-10)
    j<- ifelse(x<10, 0, 1)
  }
  
  return(c)
}


addtwonumber(c(8, 5, 3), c(5, 6, 4))
