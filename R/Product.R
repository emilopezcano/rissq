#' constructor for
#'
#' This is the constructor.
#' @name initializeProduct
#' @export
setMethod("initialize",
          signature = signature(.Object = "Product"),
          function(.Object, ..., id, name, description = character(0), characteristics = list(0), datasets = list(0)) {

            callNextMethod(.Object, ..., id = id, name = name, description = description, characteristics = characteristics, datasets = datasets)
          })

setMethod("show", "Product", function(object) {
            cat("Product, ", object@name, "\n", "ID, ", object@id ,sep = "")
            cat(" ", length(object@characteristics), " characteristics recorded.\n", sep = "")
            print(object@characteristics)
            invisible(NULL)
          })
