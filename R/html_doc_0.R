#' passthrough for html_document
#'
#' The simplest thing we can do is pass all our arguments to
#' \code{rmarkdown::\link[rmarkdown]{html_document}}
#'
#' @param ... arguments passed to
#'   \code{rmarkdown::\link[rmarkdown]{html_document}}
#'
#' @return R Markdown output format to pass to
#'   \code{rmarkdown::\link[rmarkdown]{render}}
#'
#' @seealso \url{http://rmarkdown.rstudio.com/developer_custom_formats.html}
#'
#' @examples
#' \dontrun{
#'   rmarkdown::render("foo.Rmd", html_doc_0())
#' }
#' @export
#
html_doc_0 <- function(...){

  rmarkdown::html_document(...)

}
