#* @filter cors
cors <- function(res) {
  res$setHeader("Access-Control-Allow-Origin", "*") # Or whatever
  plumber::forward()
}

#* @get /time
#* @param returnDate:bool Should Date be returned.
#* @param returnTime:bool Should Time be returned.
function(returnDate = TRUE, returnTime = TRUE){
  MyTime::returnTime(
    returnDate = returnDate,
    returnTime = returnTime
  )
}