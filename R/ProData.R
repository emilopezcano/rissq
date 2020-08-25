#' constructor for
#'
#' This is the constructor.
#' @name initializeProData
#' @export
setMethod("initialize",
          signature = signature(.Object = "ProData"),
          function(.Object, ..., pro, characteristic, data) {

            if(missing(data)) {
              stop("[ProData: validation] Data must be given")
            }

            if(missing(pro)) {
              stop("[ProData: validation] Proces or pruduct object must be specified")
            }

            if(missing(pro)) {
              stop("[ProData: validation] Characteristic object must be specified")
            }

            callNextMethod(.Object, ..., pro = pro, characteristic = characteristic, data = data)

            headers <- names(.Object@data)

            part <- headers[1]
            appraiser <- headers[2]
            variable <- headers[3]

            .Object@data[[appraiser]] <- factor(.Object@data[[appraiser]])
            .Object@data[[part]] <- factor(.Object@data[[part]])
          })

setMethod("show", "ProData", function(object) {
  cat("Data for process, ", object@pro@name, " with ID ", object@pro@id ,sep = "")
  cat("Recording characteristic, ", object@characteristic@name, " with ID ", object@characteristic@id ,sep = "")
  print(object@data)
  invisible(NULL)
})
