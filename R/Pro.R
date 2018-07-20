#' constructor for
#'
#' This is the constructor.
#' @name initializePro
#' @export
setMethod("initialize",
          signature = signature(.Object = "Pro"),
          function(.Object, ..., id, name, description = character(0), characteristics = list(0), data = data.frame(0)) {
            if(missing(id) || missing(name)){
              stop ("[Pro: validation] ID and name must be specified")
            }

            callNextMethod(.Object, ..., id = id, name = name, description = description, characteristics = characteristics, data = data)
          })
