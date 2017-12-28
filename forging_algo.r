#this vector contains the balances of the hole network
B <- runif(1000, 10000.0, 10000000.0)
Result <- rep(0, 1000)

sum_B <- 0
for (i in 1:1000) {
  sum_B  = sum_B + B[i]
}

for (k in 1:1000) {
  B[k]=B[k]/sum_B
}

B<-sort(B, decreasing = TRUE)

g <-digest(1, algo="sha256", serialize=TRUE)
s<-as.numeric(g)
typeof(s)
print(s)
V <- mpfr("ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff", base=16)
typeof(V)
print(V)
V<-format(as(V, "mpfr"), digits = NULL, drop0trailing = TRUE)
typeof(V)
print(V)
V<-as.numeric(format(as(V, "mpfr"), digits = NULL, drop0trailing = TRUE))
typeof(V)
print(V)


H <- rep(0, 10)
K <-rep(0,10)

for (i in 1:10) {
  H[i]<-mpfr(digest(i, algo="sha256", serialize=TRUE), base=16)/V
  print(H[i])
  K[i]<-as.numeric(format(as(H[[i]], "mpfr"), digits = NULL, drop0trailing = TRUE))
  print(K[i])
 
  
}
#X<-format(as(H[[1]], "mpfr"), digits = NULL, drop0trailing = TRUE)
#typeof(X)
#print(X)
#str(H[[1]][4])
#print(H[[1]][2])
#x.output <- capture.output(H[[1]])[1]
#print(x.output)
#typeof(x.output)
#XX<-unlist(H[1])
#print(XX)
#typeof(XX)
#str(XX)
#x<-capture.output(str(H, give.head=FALSE))

#print(x)

#typeof(H)
#str(H)

#for (i in 1:2) {
 # print(H[[i]])
  
#}


for (i in 1:100000) {
  sum <- 0
  for (j in 1:1000) {
    sum <- sum + B[j]
    if(sum>K[i]){
      Result[j] <- Result[j] + 1
      break
    }
  }
}


# Create the data for the chart.
#Histo <- Result
png(file = "/Users/ayoubessourni/Desktop/barchart12.png")
#barplot(Result, density = Result, names.arg = B)
#barplot(Result, names.arg = B)
plot(B,Result, type = "l")
#lines(density(Result))
warnings()
#hist(Result, freq = FALSE, prob = TRUE)
#lines(density(Result))
# Save the file.
dev.off() 




 
 write.table(B, "/Users/ayoubessourni/Documents/Nxt_Projekt/B.txt", sep="\t", eol = "\n")
 write.table(Result, "/Users/ayoubessourni/Documents/Nxt_Projekt/Result.txt", sep="\t", eol = "\n")
 
# Create the data for the chart.
#Histo <- Result
png(file = "/Users/ayoubessourni/Desktop/barchart12.png")
#barplot(Result, density = Result, names.arg = B)
#barplot(Result, names.arg = B)
plot(B,Result, type = "l")
lines(density(Result))
warnings()
#hist(Result, freq = FALSE, prob = TRUE)
#lines(density(Result))
# Save the file.
dev.off()  





