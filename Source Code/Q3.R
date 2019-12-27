#We decided to relate some variables (Other team: full time goals, half 
#time goals, shots, shots on target, corners. Team being compared: 
#fouls).We consider that  these play a key role with k means so we could 
#discover which teams are similar. Then we will compare each group using 
#the stats of the closest team to each centroid. And finally, we will 
#make a decision depending on the mean of goals received by the teams of 
#the best group.

#In order to achieve this we compute the mean of the variables of each 
#team:
  
library(ggplot2)
library(factoextra)

homeTeamMeans = function(team){
  aux1 = which(data$HomeTeam == team)
  aux2 = which(data$AwayTeam == team)
  
  HomeTeam = team
  FTAG = mean(c(data$FTAG[aux1], data$FTHG[aux2]))
  HTAG = mean(c(data$HTAG[aux1], data$HTHG[aux2]))
  AS = mean(c(data$AS[aux1], data$HS[aux2]))
  AST = mean(c(data$AST[aux1], data$HST[aux2]))
  AC = mean(c(data$AC[aux1], data$HC[aux2]))
  HF =  mean(c(data$HF[aux1], data$AF[aux2]))
  
  
  return(data.frame(HomeTeam, FTAG, HTAG, AS, AST, AC, HF))
}

#Then we create a data frame of these means

homeDefense = rbind.data.frame(
  homeTeamMeans('Barcelona'),
  homeTeamMeans('Ath Madrid'),
  ...
)

#Finally we use kmeas

rownames(homeDefense) = homeDefense$HomeTeam
homeDefense$HomeTeam = NULL
homeDefense = scale(homeDefense)
clustHDefense = kmeans(homeDefense, centers = 4 , nstart = 100)                                                        	
fviz_cluster(clustHDefense, data = homeDefense) +
  labs(title = 'Defense similarity at home')
