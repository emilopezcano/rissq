#' constructor for
#'
#' This is the constructor.
#' @name initializeProduct
#' @export
setMethod("initialize",
          signature = signature(.Object = "Product"),
          function(.Object, ..., product, id, name, description = character(0), characteristics = list(0)) {

            callNextMethod(.Object, ...,product = product, id = id, name = name, description = description, characteristics = characteristics)
          })


