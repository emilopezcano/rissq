#' @export .Characteristic
#' @exportClass Characteristic
.Characteristic <- setClass("Characteristic",
                            slots = c(
                              id = "character",
                              name = "character",
                              description = "character",
                              kvalue = "character"
                            )
)

#' @export .Pro
#' @exportClass Pro
.Pro <- setClass("Pro",
                 slots = c(
                   id = "character",
                   name = "character",
                   description = "character",
                   characteristics = "list",
                   data = "data.frame"
                 ))

#' @export .Process
#' @exportClass Process
.Process <- setClass("Process",
                     slots = c(
                       process = "character"
                     ),
                     contains="Pro"
)

#' @export .Product
#' @exportClass Product
.Product <- setClass("Product",
                     slots = c(
                       product = "character"
                     ),
                     contains="Pro"
)

#' @export .Analysis
#' @exportClass Analysis
.Analysis <- setClass("Analysis",
                      slots = c(
                        id = "character",
                        name = "character",
                        description = "character",
                        data = "data.frame",
                        pro = "Pro"
                      )
)
