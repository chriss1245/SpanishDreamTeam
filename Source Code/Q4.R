library(ggplot2)

data = read.csv("SP1.csv")
HST = data$HST
FTHG = data$FTHG

ggplot(data)+ 
  aes(x = HST, y = FTHG, color = FTR)+ 
  geom_point()