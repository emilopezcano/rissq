#' constructor for
#'
#' This is the constructor.
#' @name initializeProData
#' @export
setMethod("initialize",
          signature = signature(.Object = "ProData"),
          function(.Object, ..., pro, characteristic, data) {

            if(missing(data)) {
              data = data.frame(0)
            }

            headers <- names(data)

            part <- headers[1]
            appraiser <- headers[2]
            variable <- headers[3]

            data[[appraiser]] <- factor(data[[appraiser]])
            data[[part]] <- factor(data[[part]])

            callNextMethod(.Object, ..., pro = pro, characteristic = characteristic, data = data)
          })

setMethod("show", "ProData", function(object) {
  cat("Data for process, ", object@pro@name, " with ID ", object@pro@id ,sep = "")
  cat("Recording characteristic, ", object@characteristic@name, " with ID ", object@characteristic@id ,sep = "")
  print(object@data)
  invisible(NULL)
})
