#Lubridate

library(lubridate)

ymd(20101215)
mdy("7/4/86")

birthday <- "07/04/1986"
wday(birthday)
wday(birthday, label=TRUE)

birthday <- mdy(birthday)
time <- ymd_hms("1986-07-04 1:30:50")
time
time <- with_tz(time,"America/Chicago")
time

current <- Sys.Date()
current <- ymd(current) 


birthday + months(6) 
birthday - months(6) + days(8)

nextbday <- mdy("07/04/22")
nextbday-current

interval(birthday,birthday+days(40))

leap_year(birthday)
semester(birthday)
quarter(birthday)
week(birthday)
am(birthday)

partymonth <- nextbday + weeks(1:4)
partymonth

start <- ymd_hms("2019-01-14 12:00:10")
end <- ymd_hms("2019-02-1 2:00:30")

vacation <- interval(start,end)
vacation
vacation / days(1)
vacation / months(1)
as.period(vacation)
