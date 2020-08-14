#' constructor for
#'
#' This is the constructor.
#' @name initializeProData
#' @export
setMethod("initialize",
          signature = signature(.Object = "ProData"),
          function(.Object, ..., id, name, description = NA_character_, pro, characteristic, data) {
            if(missing(id) || missing(name)){
              stop ("[Analysis: validation] ID and name must be specified")
            }

            if(missing(description)) {
              description = NA_character_
            }

            callNextMethod(.Object, ..., id = id, name = name, description = description, pro = pro, characteristic = characteristic, data = data)
          })
