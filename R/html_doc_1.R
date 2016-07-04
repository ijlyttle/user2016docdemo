#' small tweak to html_document
#'
#' The next simplest thing we can do is change the defaults for
#' \code{code_folding} and theme, then pass the rest of our arguments to
#' \code{rmarkdown::\link[rmarkdown]{html_document}}
#'
#' @param code_folding  Enable document readers to toggle the
#'  display of R code chunks. We change the default to \code{"hide"}.
#'  See \code{rmarkdown::\link[rmarkdown]{html_document}}
#' @param theme Use to change the theme
#' @param ... other arguments passed to
#'   \code{rmarkdown::\link[rmarkdown]{html_document}}
#'
#' @return R Markdown output format to pass to
#'   \code{rmarkdown::\link[rmarkdown]{render}}
#'
#' @seealso \url{http://rmarkdown.rstudio.com/developer_custom_formats.html}
#'
#' @examples
#' \dontrun{
#'   rmarkdown::render("foo.Rmd", html_doc_1())
#' }
#' @export
#
html_doc_1 <- function(code_folding = c("show", "hide", "none"),
                       theme = "readable", ...){

  code_folding <- match.arg(code_folding)

  rmarkdown::html_document(
    code_folding = code_folding,
    theme = theme,
    ...
  )

}
