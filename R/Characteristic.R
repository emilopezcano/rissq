#' constructor for
#'
#' This is the constructor.
#' @name initializeCharacteristic
#' @export
setMethod("initialize",
          signature = signature(.Object = "Characteristic"),
          function(.Object, ..., id, name, description = character(0), kvalue = character(0)) {
            if(missing(id) || missing(name)){
              stop ("[Characteristic: validation] ID and name must be specified")
            }

            callNextMethod(.Object, ..., id = id, name = name, description = description, kvalue=kvalue)
          })

setMethod("show", "Characteristic", function(object) {
  cat("Characteristic, ", object@name, "\n", "ID, ", object@id ,sep = "")
  invisible(NULL)
})
