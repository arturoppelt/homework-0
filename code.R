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
data(moviens)

