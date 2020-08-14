#' constructor for
#'
#' This is the constructor.
#' @name initializeAnalysis
#' @export
setMethod("initialize",
          signature = signature(.Object = "Analysis"),
          function(.Object, ..., id, name, description = NA_character_, data, pro) {
            if(missing(id) || missing(name)){
              stop ("[Analysis: validation] ID and name must be specified")
            }

            if(missing(description)) {
              description = NA_character_
            }

            #pro = .Pro(id = id, name = name)

            callNextMethod(.Object, ..., id = id, name = name, description = description, pro = pro, data = data)
          })
