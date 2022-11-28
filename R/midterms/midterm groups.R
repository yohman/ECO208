# allows filtering of data
library(dplyr)

# import groups
groups <- read.csv("groups2.csv")

attach(groups)

# filter by Week 8 presenters
w9 <- filter(groups,Presentation.Week == "W9")

# shuffle to decide presentation order!
shuffled = w9[sample(1:nrow(w9)),]

