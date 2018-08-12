# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

test<-function(tars){
  myData <- subset(nycflights13::flights, carrier == tars)
  dd <- mean(myData$dep_delay[!is.na(myData$dep_delay)])
  ad <- mean(myData$arr_delay[!is.na(myData$arr_delay)])
  print(paste0(tars,":"," Average departure delay: ",dd ," min;", " Average arrival delay: ", ad, " min"))
}

