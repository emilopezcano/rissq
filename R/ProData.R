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
