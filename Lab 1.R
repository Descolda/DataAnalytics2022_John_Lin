library(readxl)
EPI2010_data <- read_excel("~/R Studio/2010EPI_data.xls", 4)
View(EPI2010_data)
#fix(EPI2010_data)
attach(EPI2010_data)

#NA replaced with true values
EPI_true <- is.na(EPI)

#Na removed
EPI_no_na <- - EPI[!tf]

#Overview of Water_H
summary(WATER_H)
fivenum(WATER_H,na.rm=TRUE)
stem(WATER_H)
Histogram_WATER_H <- hist(WATER_H, breaks=16, prob=TRUE)
x <- seq(min(WATER_H), max(WATER_H), length = 40)
f <- dnorm(x, mean = mean(WATER_H), sd = sd(WATER_H))
lines(x, f, col = "red", lwd = 2)

#Overview of DALY
summary(DALY)
fivenum(DALY,na.rm=TRUE)
stem(DALY)
Histogram_DALY <- hist(DALY, breaks=16, prob=TRUE)
x <- seq(min(DALY), max(DALY), length = 40)
f <- dnorm(x, mean = mean(DALY), sd = sd(DALY))
lines(x, f, col = "red", lwd = 2)


#QQ plot of Ecosystem compared to daly
Epi_Eco <- qqplot(EPI, ECOSYSTEM)