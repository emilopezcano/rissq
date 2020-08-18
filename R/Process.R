#' constructor for
#'
#' This is the constructor.
#' @name initializeProcess
#' @export
setMethod("initialize",
          signature = signature(.Object = "Process"),
          function(.Object, ..., process, id, name, description = character(0), characteristics = list(0), datasets = list(0)) {

            callNextMethod(.Object, ...,process = process, id = id, name = name, description = description, characteristics = characteristics, datasets = datasets)
          })


setMethod("show", "Process", function(object) {
            cat("Process, ", object@name, "\n", "ID, ", object@id ,sep = "")
            cat(" ", length(object@characteristics), " characteristics recorded.\n", sep = "")
            print(object@characteristics)
            invisible(NULL)
          })
