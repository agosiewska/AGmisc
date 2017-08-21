#' A class description
#'
#' @import methods
#' @export expanded_character
#' @exportClass expanded_character

expanded_character <- setClass("expanded_character", representation(prefix="character", string="character"))

#' @title Minus Operator
#' @description minus
#'
#' @param x,y numeric or complex vectors or objects which can be coerced to such, or other objects for which methods have been written.
#'
#' @rdname minus
#' @export
`-` <- function(x,y) {
  if(typeof(x) == "character") {
    return(expanded_character(prefix="-",string=x))
  } else {
    if(missing(y)){
      .Primitive("-")(x)
    }else{
      .Primitive("-")(x,y)
    }
  }
}

#' @title Extract or Replace Parts of an Object
#' @description Operators acting on vectors, matrices, arrays and lists to extract or replace parts.
#'
#' @param x object from which to extract element(s) or in which to replace element(s).
#' @param i,j indices specifying elements to extract or replace. Indices are numeric or character vectors
#' @param drop See \code{\link[base]{drop}}.
#'
#' @export
`[` <- function(x, i, j, drop = if (missing(i)) TRUE else length(cols) == 1) {
  cols<-NULL
  if(class(j) == "expanded_character") {
    j <- -match(j@string, names(x))
    .Primitive("[")(x, i, j)
  } else {
    .Primitive("[")(x, i, j)
  }
}
