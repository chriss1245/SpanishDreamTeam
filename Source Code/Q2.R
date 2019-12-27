library(ggplot2)

# Home
ggplot(data) +
  aes(x = HomeTeam , fill = FTR) +
  geom_bar(position = 'Stack') +
  scale_fill_discrete(name = 'Match results', labels = c('Loses', 'Draws', 'Wins')) +
  coord_flip() +
  labs(title = 'Results')

# Away
my.data = data
my.data$FTR = factor(my.data$FTR, levels = rev(levels(my.data$FTR)))
ggplot(my.data) +
  aes(x = AwayTeam , fill = FTR) +
  geom_bar(position = 'Stack') +
  scale_fill_discrete(name = 'Match results', labels = c('Loses', 'Draws', 'Wins')) +
  coord_flip() +
  labs( title = 'Results')




# Mean goals made by the team

teamGoalsMean = function(team){ 
  
  aux1 = which(data$HomeTeam == team)
  aux2 = which(data$AwayTeam == team)
  
  var = c(data$FTHG[aux1], data$FTAG[aux2]) 
  var = mean(var)
  return(var)
}

GoalsMean = rbind(
  Barcelona = teamGoalsMean('Barcelona'),
  Leganes = teamGoalsMean('Leganes'),
  Valencia = teamGoalsMean('Valencia'),
  LasPalmas = teamGoalsMean('Las Palmas'),
  Celta = teamGoalsMean('Celta'),
  Sociedad = teamGoalsMean('Sociedad'),
  Girona = teamGoalsMean('Girona'),
  AthMadrid = teamGoalsMean('Ath Madrid'),
  Sevilla = teamGoalsMean('Sevilla'),
  Espanol = teamGoalsMean('Espanol'),
  AthBilbao = teamGoalsMean('Ath Bilbao'),
  Getafe = teamGoalsMean('Getafe'),
  Betis = teamGoalsMean('Betis'),
  LaCoruna = teamGoalsMean('La Coruna'),
  RealMadrid = teamGoalsMean('Real Madrid'),
  Levante = teamGoalsMean('Levante'),
  Villarreal =  teamGoalsMean('Villarreal'),
  Malaga = teamGoalsMean('Malaga'),
  Eibar = teamGoalsMean('Eibar'),
  Alaves = teamGoalsMean('Alaves')
)

GoalsMean = data.frame(GoalsMean)
GoalsMean$Team = rownames(GoalsMean)

ggplot(GoalsMean) +
  aes(x = Team, y = GoalsMean, fill = GoalsMean) +
  geom_bar(stat = 'identity') +
  coord_flip()