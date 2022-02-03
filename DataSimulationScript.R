rnorm2 <- function(n,mean,sd) { mean+sd*scale(rnorm(n)) }
r <- rnorm2(100,4.4,1)
mean(r)  ## 4
sd(r)    ## 1


ISTT.data.group1 <- rnorm2(125, 1.8, 0.7)
ISTT.data.group2 <- rnorm2(150, 1.6, 0.9)

ISTT.data <- data.frame(Score = c(ISTT.data.group1[,1],ISTT.data.group2[,1]), Group = c(rep(1,125), rep(2, 150)))

chisquare.data2 <- data.frame(Sex = c("Male", "Male", "Female", "Female"), preference = c("Fiction", "Nonfiction",
                                                                                         'Fiction', "Nonfiction")
                              , Count = c(19, 29, 32, 20))


KWA.data2<- data.frame("Score" = c(6,11,12,20,24,21,18,15,14,10,8,14,31,
                                   7,9,11,16,19,17,11,22,23,27,26,13,32,31,
                                   30,28,29,25,26,26,27,26,19), 
                        "Treatment" = c(rep("I",12),rep("II",12),rep("III",12)))


Friedman.data2 <- data.frame("Groups" = c(as.character(rep(1:11,4))), "Treatment" = c(rep(c('I','II', 'III','IV'), times = 1, each = 11)),
                            "Score" = c(1, 2, 10, 12, 1, 10, 4, 10, 10, 14, 3,
                                        4,3,0,11,3,3,12,4,4,4,2,
                                        8,13,11,13,10,11,10,5,9,7,4,
                                        0,1,3,10,0,9,11,3,3,2,13))


write.table(Friedman.data2, file = "Friedman2.csv", row.names = FALSE, dec = ".", sep = ";", quote = FALSE)


Wilcoxen.data <- data.frame("Treatment " = c(83,80,81,74,79,78,72,84,85,88), "Control" = c(75,78,66,77,80,68,75,90,81,83))


write.table(Wilcoxen.data, file = "Wilcoxen.csv", row.names = FALSE, dec = ".", sep = ";", quote = FALSE)


desc.data <- data.frame("Data" = c(1:5))

write.table(desc.data, file = "Descriptives.csv", row.names = FALSE, dec = ".", sep = ";", quote = FALSE)


Ranova.data <- data.frame("A1(experimental)" = c(8,9,5,4,2,10,3,12,6,11), "A2(control)"=c(6,8,3,2,1,7,1,7,6,9))

write.table(Ranova.data, file = "Ranova.csv", row.names = FALSE, dec = ".", sep = ";", quote = FALSE)




rnorm2 <- function(n,mean,sd) { mean+sd*scale(rnorm(n)) }


OSTT.data <- rnorm2(100,5, 1)
mean(OSTT)
sd(OSTT.data)

write.table(OSTT.data, file = "OSTT.csv", row.names = FALSE, dec = ".", sep = ";", quote = FALSE)



MNsample <- data.frame('Color' = c('Black', 'Red', 'White', 'Blue'), "Count" = c(2,3,5,0))

write.table(MNsample, file = "MNT.csv", row.names = FALSE, dec = ".", sep = ";", quote = FALSE)

