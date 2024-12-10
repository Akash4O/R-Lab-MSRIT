#Function to calculate library fine
calculate_fine <- function(days_overdue){
  if(days_overdue<=7){
    fine<-0 #No fine for the first 7 days
  }else if(days_overdue<=30){
    fine_per_day <- 2 #fine per day after 7 days
    fine <- (days_overdue-7)*fine_per_day
  }else{
    fine_cap <- 50 #Maximum fine after 30 days
    fine <- fine_cap
  }
  return(fine)
}

days_oversue <- as.integer(readline("Enter the number of days the book is ovedue : "))

fine_amount <- calculate_fine(days_oversue)

cat("Fine Amount : ",fine_amount,"\n")
if(fine_amount==0){
  cat("No fine. Thank you for returning the book on time!\n")
}else{
  if(days_oversue > 30){
    cat("Fine exceeds the maximum cap. Please contact the library.\n")
  }else{
    cat("Please pay the fine within the specified period. \n")
  }
}