#' constructor for
#'
#' This is the constructor.
#' @name initializeProData
#' @export
setMethod("initialize",
          signature = signature(.Object = "ProData"),
          function(.Object, ..., pro, characteristic, data) {

            if(missing(data) || is.na(data)) {
              stop("[ProData: validation] Data must be given")
            }

            if(missing(pro) || is.na(pro)) {
              stop("[ProData: validation] Proces or pruduct object must be specified")
            }

            if(missing(characteristic) || is.na(characteristic)) {
              stop("[ProData: validation] Characteristic object must be specified")
            }

            headers <- names(data)

            part <- headers[1]
            appraiser <- headers[2]
            variable <- headers[3]

            data[[appraiser]] <- factor(data[[appraiser]])
            data[[part]] <- factor(data[[part]])

            fdata <- data

            callNextMethod(.Object, ..., pro = pro, characteristic = characteristic, data = fdata)


          })

setMethod("show", "ProData", function(object) {
  cat("Data for process, ", object@pro@name, " with ID ", object@pro@id ,sep = "")
  cat("Recording characteristic, ", object@characteristic@name, " with ID ", object@characteristic@id ,sep = "")
  print(object@data)
  invisible(NULL)
})
