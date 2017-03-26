library(dplyr)
library(tidyr)


seek <- read.csv("https://raw.githubusercontent.com/DATA607/Project3/master/seekJobs.csv")
dice <- read.csv("https://raw.githubusercontent.com/DATA607/Project3/master/dice_updated.csv")
uk <- read.csv("https://raw.githubusercontent.com/DATA607/Project3/master/itjobsUK1.csv")


colnames(seek)
colnames(dice)
colnames(uk)

seek <- select(seek, jobTitle, location, Skill, Count)
colnames(seek)[3] <- "skill"
colnames(seek)[4] <- "count"
colnames(seek)


dice <- select(dice, jobTitle, location, skill, count)
colnames(dice)

colnames(uk)[3] <- "jobTitle"
colnames(uk)[7] <- "location"
colnames(uk)[9] <- "skill"
colnames(uk)[10] <- "count"
uk <- select(uk, jobTitle, location, skill, count)
colnames(uk)

df <- rbind(seek, dice, uk)
write.csv(df, file = "C:/Users/jenny_000/Desktop/MSDA R/DATA 607/dataframe.csv")

