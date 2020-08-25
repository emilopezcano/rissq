#' @export .Characteristic
#' @exportClass Characteristic
.Characteristic <- setClass("Characteristic",
                            slots = c(
                              id = "character",
                              name = "character",
                              description = "character",
                              kvalue = "character",
                              T = "numeric",
                              U = "numeric",
                              L = "numeric",
                              pnc = "numeric",
                              digits = "numeric",
                              units = "character"
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
                   datasets = "list"
                 ))

#' @export .Process
#' @exportClass Process
.Process <- setClass("Process",
                     contains="Pro"
)

#' @export .Product
#' @exportClass Product
.Product <- setClass("Product",
                     contains="Pro"
)

#' @export .ProData
#' @exportClass ProData
.ProData <- setClass("ProData",
                     slots = c(
                       pro = "Pro",
                       characteristic = "Characteristic",
                       data = "data.frame"
                     )
)

#' @export .Analysis
#' @exportClass Analysis
.Analysis <- setClass("Analysis",
                      slots = c(
                        id = "character",
                        name = "character",
                        description = "character",
                        data = "ProData",
                        pro = "Pro",
                        characteristic = "Characteristic"
                      )
)
