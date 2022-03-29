data = read.csv("data.csv")
# coordination = data["mean_team_coordination"]
# effectiveness = data["mean_team_effectiveness"]

# c = unlist(coordination)
# e = unlist(effectiveness)


# scatter(c, e)
library(ggplot2)
library(GGally)

# plot(c, e)
ggplot(data, aes(x=mean_team_coordination, y=mean_team_effectiveness)) + geom_point()
lm_effectiveness_coordination = lm(formula = mean_team_effectiveness ~ mean_team_coordination, data = data)
summary(lm_effectiveness_coordination)

plot(data$mean_team_effectiveness ~ data$mean_team_coordination, data = data)
abline(lm_effectiveness_coordination)


data1 = data.frame(team_size=data$team_size,response_rate=data$response_rate,response_count=data$response_count,mean_age=data$mean_age,mean_tenure=data$mean_tenure,mean_team_history=data$mean_team_history,mean_voice_behavior=data$mean_voice_behavior,mean_team_coordination=data$mean_team_coordination,mean_team_effectiveness=data$mean_team_effectiveness)

ggpairs(data1)