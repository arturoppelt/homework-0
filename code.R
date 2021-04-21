library(dslabs)
library(lubridate)
options(digits = 3)    # 3 significant digits

#question 3
data("brexit_polls")
sum(month(brexit_polls$startdate) == 4)
sum(round_date(brexit_polls$enddate, unit = "week") == "2016-06-12")

#question 4
weekdays(brexit_polls$enddate)

sum(weekdays(brexit_polls$enddate) == "Sunday")
sum(weekdays(brexit_polls$enddate) == "Monday")
sum(weekdays(brexit_polls$enddate) == "Tuesday")
sum(weekdays(brexit_polls$enddate) == "Wednesday")
sum(weekdays(brexit_polls$enddate) == "Thursday")
sum(weekdays(brexit_polls$enddate) == "Friday")
sum(weekdays(brexit_polls$enddate) == "Saturday")

#question 5
data(movielens)
##arrange by year
table <- data.frame(date =as_datetime(movielens$timestamp),
                    year = year(as_datetime(movielens$timestamp)),
                    hour = hour(as_datetime(movielens$timestamp)))
table <- data.frame(table(table$year))
table %>% arrange(cols = Freq)
##arrange by day
table <- data.frame(date =as_datetime(movielens$timestamp),
                    year = year(as_datetime(movielens$timestamp)),
                    hour = hour(as_datetime(movielens$timestamp)))
table <- data.frame(table(table$hour))
table %>% arrange(cols = Freq)

#question 6
install.packages("gutenbergr")
library(gutenbergr)
data("gutenberg_metadata")
gutenberg_works(author == "Austen, Jane")
gutenberg_download(1342)                                  
install.packages("tidytext")
library(tidytext)                                  
words <- 