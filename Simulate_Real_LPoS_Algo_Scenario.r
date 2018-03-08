
#Hashing LPoS Algorithm.

#Ayoub Essourni _ Master of Informatics _ Ruhr West - University of Applied Sciences - Mülheim an der Ruhr - Germany 
#Youssef Namil _ Master of Informatics _ Ruhr West - University of Applied Sciences - Mülheim an der Ruhr - Germany 

#Supervied by: Mr. Prof. Dr. Marc Jansen

#Email: ayoub.essourni@stud.hs-ruhrwest.de
#       youssef.namil@stud.hs-ruhrwest.de


#packages to include :
#digest
#Rmpfr

#List of generators for the past 30 days (41473 blocks)  [last update Feb 21 2018 08:00:01 UTC]

#sum of the generating balances of this periode = 49341544.80423833


#Estimated blocks = Blocks per day * Average share


#the total number of the blocks been forged in this periode
Total_Number_Of_Blocks<-41473

#this array contain the 176 effective balances of the Nodes that participate on the generation of blocks for this periode.
Average_Gen_Balance<-c(16450937.48453257, 10550331.59931007, 4119605.92820150, 4093338.10048600, 2314732.31874690, 1987567.25379868, 1719935.30766596, 957888.99288873, 600122.05588288, 513309.71207233, 507922.81587830, 402168.71425819, 397793.44191955, 379242.55030373, 350817.40503355, 331634.07981810, 270188.29264149, 262115.18326666, 260255.45102925, 226203.79710881, 203983.73231106, 141054.51408851, 134182.55045925, 127384.83371429, 113482.40256861, 109645.15526692, 100047.47075813, 98473.26806797, 96329.96069536, 79839.05880934, 77638.91729703, 76907.88394154, 75728.08862660, 63898.44959788, 63806.00612006, 61512.62288017, 54580.64999130, 50155.19360843, 48876.12782211, 44036.64042942, 42924.68670727, 42019.64404846, 40986.01541404, 40115.51964107, 36038.03092997, 34921.00683315, 32600.96711905, 30890.27126563, 30012.82476553, 28452.04005663, 24618.97788459, 24227.50727321, 21656.26684021, 18512.05495243, 17316.14632484, 16929.03325034, 15904.43763877, 14838.58315214, 14308.72617120, 13003.99820051, 12625.11263532, 12537.65772758, 12432.41294626, 10909.72062348, 10649.60201688, 10509.86344766, 10315.83845699, 10234.05215291, 10012.39854224, 10003.47505611, 9899.56332383, 9607.45294928, 9257.12565961, 8475.62708056, 6909.38350189, 6454.11383525, 6147.17792388, 5732.41957461, 5583.65048701, 5084.02411207, 4335.89607450, 4042.29084662, 3848.54544058, 3616.16799900, 3479.94972269, 3333.80291669, 3260.70265319, 3104.67824763, 2929.94700400, 2807.75352136, 2660.66201258, 2465.11415055, 2377.74630354, 2235.01113868, 2111.34003389, 2042.21266737, 1936.88398951, 1843.23339842, 1811.01378936, 1801.39841811, 1727.57548490, 1622.49126351, 1582.26028183, 1439.37718289, 1384.77560491, 1329.37305551, 1250.14214454, 1195.07001014, 1111.89227399, 1087.58146066, 1084.82192574, 1074.36442926, 1003.83012812, 1001.03339867, 860.42930687, 849.61473932, 807.94503164, 794.39481875, 784.49926851, 730.99441025, 718.72564718, 697.75904675, 659.83054443, 634.10757191, 627.19045989, 621.94332172, 620.93372230, 620.63008899, 603.36513607, 592.01393123, 587.79782038, 581.62201025, 565.16155631, 560.69678159, 557.58363002, 543.91748215, 511.68428968, 499.80972418, 490.13759823, 465.99082335, 442.71019935, 442.08147262, 433.81352746, 429.08112096, 428.60097020, 421.79037218, 415.12687937, 410.34565996, 405.37095522, 389.46287481, 378.98870342, 367.27476286, 350.25564843, 338.76280169, 337.60689588, 307.45041435, 293.09605277, 287.97786348, 286.00766801, 280.56660800, 252.47864477, 227.76228491, 226.04237741, 215.45158955, 188.96026615, 183.26357327, 162.16624684, 156.49265935, 141.92571828, 132.45702672, 115.72838813, 114.14920834, 62.02112198, 43.17200718, 8.76059352, 8.46092639)

#Here the estimed forged blocks by the LPoS waves algorithm which is propotional to there respective balances for the same periode of time.
LPoS_Estimated_Blocks<-c(13827.49, 8867.86, 3462.65, 3440.57, 1945.60, 1670.61, 1445.66, 805.13, 504.42, 431.45, 426.92, 338.03, 334.36, 318.76, 294.87, 278.75, 227.10, 220.32, 218.75, 190.13, 171.45, 118.56, 112.78, 107.07, 95.39, 92.16, 84.09, 82.77, 80.97, 67.11, 65.26, 64.64, 63.65, 53.71, 53.63, 51.70, 45.88, 42.16, 41.08, 37.01, 36.08, 35.32, 34.45, 33.72, 30.29, 29.35, 27.40, 25.96, 25.23, 23.91, 20.69, 20.36, 18.20, 15.56, 14.55, 14.23, 13.37, 12.47, 12.03, 10.93, 10.61, 10.54, 10.45, 9.17, 8.95, 8.83, 8.67, 8.60, 8.42, 8.41, 8.32, 8.08, 7.78, 7.12, 5.81, 5.42, 5.17, 4.82, 4.69, 4.27, 3.64, 3.40, 3.23, 3.04, 2.92, 2.80, 2.74, 2.61, 2.46, 2.36, 2.24, 2.07, 2.00, 1.88, 1.77, 1.72, 1.63, 1.55, 1.52, 1.51, 1.45, 1.36, 1.33, 1.21, 1.16, 1.12, 1.05, 1.00, 0.93, 0.91, 0.91, 0.90, 0.84, 0.84, 0.72, 0.71, 0.68, 0.67, 0.66, 0.61, 0.60, 0.59, 0.55, 0.53, 0.53, 0.52, 0.52, 0.52, 0.51, 0.50, 0.49, 0.49, 0.48, 0.47, 0.47, 0.46, 0.43, 0.42, 0.41, 0.39, 0.37, 0.37, 0.36, 0.36, 0.36, 0.35, 0.35, 0.34, 0.34, 0.33, 0.32, 0.31, 0.29, 0.28, 0.28, 0.26, 0.25, 0.24, 0.24, 0.24, 0.21, 0.19, 0.19, 0.18, 0.16, 0.15, 0.14, 0.13, 0.12, 0.11, 0.10, 0.10, 0.05, 0.04, 0.01, 0.01)

#Here the blocks been actually forged by the LPoS waves algorithm for the same periode of time
LPoS_Forged_Blocks<-c(17115, 9386, 2085, 3138, 1726, 1444, 1246, 653, 123, 335, 379, 276, 276, 274, 231, 238, 199, 164, 159, 154, 130, 104, 97, 81, 65, 76, 89, 59, 59, 39, 61, 68, 52, 49, 61, 23, 28, 18, 44, 27, 24, 32, 40, 24, 12, 35, 22, 23, 9, 24, 14, 12, 20, 8, 12, 10, 7, 8, 4, 10, 3, 7, 6, 1, 5, 3, 5, 11, 6, 6, 7, 5, 10, 3, 7, 4, 6, 5, 6, 1, 7, 3, 3, 2, 3, 2, 7, 5, 4, 3, 2, 3, 4, 3, 2, 3, 3, 3, 2, 3, 4, 3, 2, 2, 3, 1, 2, 2, 2, 1, 2, 4, 1, 1, 2, 1, 3, 3, 2, 3, 2, 2, 1, 2, 3, 2, 1, 2, 1, 2, 1, 1, 1, 1, 3, 2, 1, 2, 1, 1, 1, 2, 2, 2, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1)

#Here the signatures of the blocks been forged in this periode of time, which we are going to use for the calculation of the target for each round.
signature_Of_Blocks = read.csv("/Waves_Forging_Algo/Past30DaysSignatures.txt")

#Here we order the signatures over the timestamp. This is was only necessery for an dynamic test( here we did a static test) of our algorithm.
#Because the balances are getting changed from block to block where the nodes get the fees corresponds to the block been forged.
signature_Of_Blocks[order(signature_Of_Blocks$timestamp),]

#we sum up over the all generating balances for this periode(30 days).
sum_AGB <- sum(Average_Gen_Balance)
#We dived evry generating balnce by the sum to get the proportional weight
Average_Gen_Balance_percent<-Average_Gen_Balance/sum_AGB

#this is just for more visiblity in the figures. The percent of the estimated blocks. 
LPoS_Estimated_Blocks_precent<-LPoS_Estimated_Blocks/Total_Number_Of_Blocks

#this is just for more visiblity in the figures. The percent of the forged blocks by the LPoS. 
LPoS_Forged_Blocks_percent<-LPoS_Forged_Blocks/Total_Number_Of_Blocks

#we sort the balances decreasingly, but they are already sorting that way as we took the form website http://dev.pywaves.org/generators/ 


#this is the max 256 bit number in base 16, we convert it into decimal number
V <- mpfr("ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff", base=16)
V<-format(as(V, "mpfr"), digits = NULL, drop0trailing = TRUE)

#this array for storing the results gotten from our algorithm
Hash_LPoS_Forged_Blocks<-rep(0,176)

#indice of the 176 Node
Indice_Of_Node <- seq(1, 176, 1)

#this array just for easing the calcultions
K <- seq(1, Total_Number_Of_Blocks, 1)

for (i in 2:Total_Number_Of_Blocks+1) {
  #we calculate the hash(signature_B(n-1))/max-hash
  K[i]<-as.numeric(format(as((mpfr(digest(signature_Of_Blocks[[1]][i], algo="sha256", serialize=TRUE), base=16)/V), "mpfr"), digits = NULL, drop0trailing = TRUE))
  print(i)
  sum <- 0
  for (j in 1:176) {
    sum <- sum + Average_Gen_Balance_percent[j]
    if(sum>K[i]){
      Hash_LPoS_Forged_Blocks[j] <- Hash_LPoS_Forged_Blocks[j] + 1
      break
    }
  }
}

#this array conatins now the percentage of the forged blocks using or algo.
Hash_LPoS_Forged_Blocks_percent<-Hash_LPoS_Forged_Blocks/Total_Number_Of_Blocks

#this is the first figure. contains tree functions f, g and F. 
bitmap("/Users/ayoubessourni/Documents/Waves_Forging_Algo/IEEEtran/image/Forged_Blocks_Hash_Test_percent_over_Indicev3.jpeg", height = 4, width = 3.7, units = 'in', type="jpeg", res=2400)
plot(Indice_Of_Node, LPoS_Forged_Blocks_percent, xlab = "Indice of Weight b", ylab = "(HashLPoS)Forged Blocks(f) & (LPoS)Forged Blocks(F) & Node's Weights(g)",type = "p", col="green")
lines(Indice_Of_Node, Average_Gen_Balance_percent, col="black",lty=2, type = "p")
lines(Indice_Of_Node, Hash_LPoS_Forged_Blocks_percent, col="red",lty=3, type = "p")
legend("topright", legend=c("F: Forged Blocks(LPoS)", "g: Forged Blocks(HashLPoS)", "f: Node's Weights decreasingly arranged "),
       col=c("green", "red", "black"), lty=1:3, cex=0.8)
dev.off()
par(mfrow = c(1,1))

x <-seq(0.0,0.5, 0.1)
y <- x

#this is the second figure. contains tree functions F, G and the axe x=y.
bitmap("/Users/ayoubessourni/Documents/Waves_Forging_Algo/IEEEtran/image/Forged_Blocks_Hash_Test_percent_over_Average_Gen_Balance-percentv3.jpeg", height = 4, width = 3.7, units = 'in', type="jpeg", res=2400)
plot(Average_Gen_Balance_percent, LPoS_Forged_Blocks_percent, xlab = "Node's Weights decreasingly arranged", ylab = "Forged Blocks using (LPoS) and (HashLPoS)",type = "p", col="green")
lines(Average_Gen_Balance_percent, Hash_LPoS_Forged_Blocks_percent, col="red",lty=2, type = "p")
lines(x,y,col="black",lty=3,type = "l")
legend("topleft", legend=c("F : (LPoS)Forged Blocks", "G : (HashLPoS)Forged Blocks", "Axe y = x"),
       col=c("green", "red", "black" ), lty=1:3, cex=0.8)
dev.off()
par(mfrow = c(1,1))



dfrm <- data.frame(Avr = Average_Gen_Balance, EB=Estimated_Blocks, MB = Mined_Blocks, MBH = Mined_Blocks_Hash_Test )

write.table( dfrm,"/Users/ayoubessourni/Documents/Waves_Forging_Algo/mydata_Mined_Blocks_Test.txt", sep="\t")


