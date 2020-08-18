#' constructor for
#'
#' This is the constructor.
#' @name initializeProData
#' @export
setMethod("initialize",
          signature = signature(.Object = "ProData"),
          function(.Object, ..., pro, characteristic, data) {

            if(missing(data)) {
              description = data.frame(0)
            }

            callNextMethod(.Object, ..., pro = pro, characteristic = characteristic, data = data)
          })

setMethod("show", "ProData", function(object) {
  cat("Data for process, ", object@pro@name, " with ID ", object@pro@id ,sep = "")
  cat("Recording characteristic, ", object@characteristic@name, " with ID ", object@characteristic@id ,sep = "")
  print(object@data)
  invisible(NULL)
})
