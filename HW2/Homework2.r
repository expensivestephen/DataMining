abalone <- read.csv('C:/Users/Kenigbolo PC/Desktop/abalone.csv')

colnames(abalone)

nrow(abalone)

head(abalone, 3)

abalone[0:3,"Rings", drop=FALSE]

tail(abalone, 3)

abalone[999:1000,"Weight", drop=FALSE]

abalone[755:755,"Diameter", drop=FALSE]

na_height <- abalone[is.na(abalone$Height),]

na_height[,"Height", drop=FALSE]

mean_height <- abalone[,"Height", drop=FALSE]

mean(mean_height$Height, na.rm=TRUE)

new_abalone <- subset(abalone, Gender == "M" & Weight < 0.75)

mean_diameter <- new_abalone[,"Diameter", drop=FALSE]

mean(mean_diameter$Diameter, na.rm=TRUE)

sort(table(abalone$Rings), decreasing=TRUE)[1]

minLength <- subset(abalone, Rings == 18)

min(minLength$Length, na.rm = TRUE)

mean(abalone$Length, na.rm = TRUE)

mean(abalone$Weight, na.rm = TRUE)

mean(abalone$Height, na.rm = TRUE)

mean(abalone$Diameter, na.rm = TRUE)

mean(abalone$Rings, na.rm = TRUE)

median(abalone$Length, na.rm = TRUE)

median(abalone$Weight, na.rm = TRUE)

median(abalone$Height, na.rm = TRUE)

median(abalone$Diameter, na.rm = TRUE)

median(abalone$Rings, na.rm = TRUE)

library(ggplot2)
qplot(data = abalone, x = Length)

qplot(data = abalone, x = Weight)

qplot(data = abalone, x = Height, na.rm = TRUE)

qplot(data = abalone, x = Diameter)

qplot(data = abalone, x = Rings)

plot(abalone$Length, abalone$Weight, abalone$Height, abalone$Diameter, abalone$Rings)
