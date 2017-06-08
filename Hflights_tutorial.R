# load packages
library(dplyr)
library(hflights)

# explore data
data(hflights)
head(hflights)

# convert to local data frame
flights <- tbl_df(hflights)

# print now to show neat data
flights

print(flights, n=20)

data.frame(head(flights))

filter(flights, Month==1, DayofMonth==1)

flights %>% select(UniqueCarrier,DepDelay) %>% filter(DepDelay > 60)

x1 <- 1:5; x2 <- 2:6

sqrt(sum((x1-x2)^2))

(x1-x2)^2 %>% sum() %>% sqrt()

flights %>% select(UniqueCarrier,DepDelay) %>% arrange(DepDelay)

flights %>% select(Distance, AirTime) %>% mutate(Speed = Distance/AirTime*60)
