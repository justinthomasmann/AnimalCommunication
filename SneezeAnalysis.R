df <- read.csv("SneezeData.csv", h=TRUE)

library(lme4)
library(sjPlot)

mdl <- glmer(data = df, Success ~ Tot.RNE + InitiatorPOA + 
               Attempts + PropAdults + (1|Pack), 
      family = binomial())

summary(mdl)

plot_model(mdl)
