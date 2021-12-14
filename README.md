# SpanishDreamTeam
It is our first exploratory data analysis. The idea of this project was to introduce ourselves in the different tools of exploration of data we had.
We used a data set of the spanish soccer league in order to find out which is the best combination of gooalkeeper, defence midfield and atack using spanish teams.



## Best Atack
In order to find out which is the best atacker we took into account the accuracy (scored goals/total tries)

In the following plots we can see the accuracy of the teams.
![lol](https://user-images.githubusercontent.com/58918297/146089472-3812099f-34fc-442b-a9da-77f0ada90686.png)


Sociedad seems to be the most accurate team.

## Best Midfield
Even though barcelona is not the most accurate team, it is the most succesful scoring.
![total_goals](https://user-images.githubusercontent.com/58918297/146085643-f3e17fee-93be-4f73-8913-a56bb490fbcc.png)

This happens because barcelona can try more times to score. This is thaks to their wonderful midfield

## Best Defense
Since we did not have any clear messure for defense. We decided to relate some variables (other team: full time goals, half time goals, shots, shots on target, corners; team being compared: fouls).  With kmeans we could discover which teams are similar. Then we compared each group using the stats of the closest team to each clusters' centroid.

<br>

![kmeans](https://user-images.githubusercontent.com/58918297/146087767-e83c45f6-b0d8-4d12-9148-8f253ea2dd25.png)

Now, we compare each group by choosing the closest team to each centroid:
![defence_away](https://user-images.githubusercontent.com/58918297/146088172-921327e8-16c4-45b7-9810-0c0a681ff3da.png)
![defence_home](https://user-images.githubusercontent.com/58918297/146088176-05932485-2969-45a5-afd4-d656177e3904.png)

We noticed here that Ath Madrid’s clusters has the best defense. Now let’s see which team of the group gives the best result saving goals:
* There are only two members. Ath Madrid and Real Madrid
<br>
![scored](https://user-images.githubusercontent.com/58918297/146088370-8596804c-5d90-439f-a0f1-f0c238789210.jpg)

<br>
Finally, we could conclude that the best defense is the Ath Madrid's one.

## Best Goalkeeper
*How are the statistics of the goalkeepers of the different home teams?*
We can examine the difference between the home team shots on target and the full time home team goals. 

![goalkeeper](https://user-images.githubusercontent.com/58918297/146089672-3dfc81eb-916c-4370-b428-8b59fc48868e.png)

This is calculated by simply subtracting the full time goals from the shots on target. We do this with the home teams and the away teams, and we notice that the away teams save the goals quite well. For instance, Alavés saved 10 goals which were shot by Barcelona, the leader of the Spanish football League of that season. So we would take the goalkeeper of Alavés for our dream team. 

## Conclusion
For our dream team we need
* goalkeeper: Alavés
* defence: Ath Madrid
* atack: Socieadad
* midfield: Barcelona
