#' constructor for
#'
#' This is the constructor.
#' @name initializeCharacteristic
#' @export
setMethod("initialize",
          signature = signature(.Object = "Characteristic"),
          function(.Object, ..., id, name, description = character(0), kvalue = character(0), units, T, U, L, pnc, digits) {

            if(missing(id) || missing(name) || is.na(id) || is.na(name)){
              stop("[Characteristic: validation] ID and name must be specified")
            }

            if(missing(units) || is.na(units)) {
              stop("[Characteristic: validation] Unit of measure must be specified")
            }

            if(missing(T) || is.na(T)) {
              T = NA_real_
            }

            if(missing(U) || is.na(U)) {
              U = NA_real_
            }

            if(missing(L) || is.na(L)) {
              L = NA_real_
            }

            if(missing(pnc) || is.na(pnc)) {
              pnc = NA_real_
            }

            if(missing(digits) || is.na(digits)) {
              digits = 4
              message("[Characteristic: validation] Number of decimal places set to 4")
            }


            callNextMethod(.Object, ..., id = id, name = name, description = description, kvalue=kvalue, units = units, T = T, U = U, L = L, pnc = pnc, digits = digits)
          })

setMethod("show", "Characteristic", function(object) {
  cat("Characteristic, ", object@name,
      "\n", "ID, ", object@id,
      "\n", "Description, ", object@description,
      "\n", "KValue, ", object@kvalue,
      "\n", "    Target value, ", object@T,
      "\n", "    Upper limit, ", object@U,
      "\n", "    Lower limit, ", object@L,
      "\n", "    Non-compliant percentage, ", object@pnc,
      "\n", "    Number of decimal places, ", object@digits,
      "\n", "Unit of measure, ", object@digits,
      sep = "")
  invisible(NULL)
})
