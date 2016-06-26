#' small tweak to html_document
#'
#' The next simplest thing we can do is change the defaults for
#' \code{code_folding} and theme, add some css for the title,
#' then pass the rest of our arguments to
#' \code{rmarkdown::\link[rmarkdown]{html_document}}
#'
#' Any css you send using the `css` argument will be appended
#' to the title css.
#'
#' @param code_folding  Enable document readers to toggle the
#'  display of R code chunks. We change the default to \code{"hide"}.
#'  See \code{rmarkdown::\link[rmarkdown]{html_document}}
#' @param theme Use to change the theme
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
#'   rmarkdown::render("foo.Rmd", html_doc_2())
#' }
#' @export
#
html_doc_2 <- function(code_folding = c("hide", "show", "none"),
                       theme = "readable", css = NULL, ...){

  code_folding <- match.arg(code_folding)

  # append supplied css to our css
  css <- c(
    system.file("css", "comic_sans.css", package = "user2016docdemo"),
    css
  )

  rmarkdown::html_document(
    code_folding = code_folding,
    theme = theme,
    css = css,
    ...
  )
}
