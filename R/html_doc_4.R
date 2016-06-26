#' what have we done to html_document?
#'
#' Less simple, but we enable a floating table-of-contents,
#' \code{code_folding}, syntax highlighting, insert some custom css,
#' then pass the rest of our arguments to
#' \code{rmarkdown::\link[rmarkdown]{html_document}}
#'
#' @param toc TRUE to include a table of contents in the output
#' @param toc_float TRUE to float the table of contents to the left of the main document content
#' @param code_folding  Enable document readers to toggle the
#'  display of R code chunks. We change the default to \code{"hide"}.
#'  See \code{rmarkdown::\link[rmarkdown]{html_document}}
#' @param highlight Syntax highlighting style
#' @param css One or more css files to include in addition
#'   to this format's css.
#' @param ... other arguments passed to
#'   \code{rmarkdown::\link[rmarkdown]{html_document}}
#'
#' @return R Markdown output format to pass to
#'   \code{rmarkdown::\link[rmarkdown]{render}}
#'
#' @examples
#' \dontrun{
#'   rmarkdown::render("foo.Rmd", html_doc_4())
#' }
#' @export
#
html_doc_4 <- function(toc = TRUE, toc_float = TRUE,
                       code_folding = c("show", "hide", "none"),
                       highlight = "textmate",
                       css = NULL, ...){

  code_folding <- match.arg(code_folding)

  # append supplied css to our css
  css <- c(
    system.file("css", "user2016docdemo.css", package = "user2016docdemo"),
    system.file("css", "comic_sans.css", package = "user2016docdemo"),
    css
  )

  rmarkdown::html_document(
    toc = toc, toc_float = toc,
    code_folding = code_folding,
    highlight = highlight,
    css = css,
    ...
  )
}

