#' constructor for
#'
#' This is the constructor.
#' @name initializeAnalysis
#' @export
setMethod("initialize",
          signature = signature(.Object = "Analysis"),
          function(.Object, ..., id, name, description = NA_character_, data, pro) {

            if(missing(id) || missing(name) || is.na(id) || is.na(name)){
              stop ("[Analysis: validation] ID and name must be specified")
            }

            if(missing(description) || is.na(description)) {
              description = NA_character_
            }

            callNextMethod(.Object, ..., id = id, name = name, description = description, pro = pro, data = data)
          })
