library(ggplot2)


# Home performance
homeGoals = data

homeGoals$Goals_precision_percentage = (homeGoals$FTHG * 100) / (homeGoals$HST)

homeGoals = cbind.data.frame( homeGoals$HomeTeam, homeGoals$Goals_precision_percentage)
colnames(homeGoals) = c( 'Team', 'Goals_precision_percentage')
homeGoals$Goals_precision_percentage[is.nan(homeGoals$Goals_precision_percentage)] = 0
colnames(homeGoals) = c('Team', 'Goals_precision_percentage')

ggplot(homeGoals) + 
  geom_boxplot(aes(x = Team, y = Goals_precision_percentage, group = Team, fill = Team)) +
  labs(title = 'Accuracy at home (The more the better)') +
  coord_flip()

# Away performance
awayGoals = data

awayGoals$Goals_precision_percentage = (awayGoals$FTAG * 100) / (awayGoals$AST)

awayGoals = cbind.data.frame(awayGoals$AwayTeam, awayGoals$Goals_precision_percentage)
colnames(awayGoals) = c('Team', 'Goals_precision_percentage')
awayGoals$Goals_precision_percentage[is.nan(awayGoals$Goals_precision_percentage)] = 0
colnames(awayGoals) = c('Team', 'Goals_precision_percentage')

ggplot(awayGoals) + 
  geom_boxplot(aes(x = Team, y = Goals_precision_percentage, group = Team, fill = Team)) +
  labs(title = 'Accuracy away (Te more the better)') +
  coord_flip()

