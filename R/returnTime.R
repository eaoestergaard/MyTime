returnTime <- function(returnDate = TRUE, returnTime = TRUE){
  if (returnDate& returnTime) {
    return(Sys.time())
  }else if (returnDate){
    return(format(Sys.time(), "%d %b %Y") )
  }else if (returnTime){
    return(format(Sys.time(), "%H:%M:%S"))
  } else{
    return("Hello")
  }
}