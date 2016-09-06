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
#' @param self_contained Produce a standalone HTML file with no external dependencies...
#' @param highlight Syntax highlighting style
#' @param css One or more css files to include in addition
#'   to this format's css.
#' @param lib_dir Directory to copy dependent HTML libraries
#'   (e.g. jquery, bootstrap, etc.) into...
#' @param ... other arguments passed to
#'   \code{rmarkdown::\link[rmarkdown]{html_document}}
#'
#' @seealso \url{http://rmarkdown.rstudio.com/developer_custom_formats.html}
#'
#' @return R Markdown output format to pass to
#'   \code{rmarkdown::\link[rmarkdown]{render}}
#'
#' @examples
#' \dontrun{
#'   rmarkdown::render("foo.Rmd", html_doc_5())
#' }
#' @export
#
html_doc_5 <- function(toc = TRUE,
                       toc_float = TRUE,
                       code_folding = c("show", "hide", "none"),
                       self_contained = FALSE,
                       highlight = "textmate",
                       css = NULL,
                       lib_dir = "site_libs",
                       ...){

  code_folding <- match.arg(code_folding)

  name_fmt <- "user2016docdemo"
  version_fmt <- "0.0.0.9000"

  dep <- function(){
    htmltools::htmlDependency(
      name = name_fmt,
      version = version_fmt,
      src = system.file("site_libs", package = "user2016docdemo"),
      stylesheet = file.path("css", c("user2016docdemo.css", "comic_sans.css"))
    )
  }

  format_html_document <- rmarkdown::html_document(
    toc = toc,
    toc_float = toc_float,
    code_folding = code_folding,
    self_contained = self_contained,
    highlight = highlight,
    extra_dependencies = list(dep()),
    lib_dir = lib_dir,
    ...
  )

  # here, we mess with the list - not using the API - so do this
  # at your own risk

  format_html_document$knitr$opts_chunk$comment <- ""

  format_html_document
}

