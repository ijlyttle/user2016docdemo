% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/html_doc_5.R
\name{html_doc_5}
\alias{html_doc_5}
\title{what have we done to html_document?}
\usage{
html_doc_5(toc = TRUE, toc_float = TRUE, code_folding = c("show", "hide",
  "none"), self_contained = FALSE, highlight = "textmate", css = NULL,
  lib_dir = "site_libs", ...)
}
\arguments{
\item{toc}{TRUE to include a table of contents in the output}

\item{toc_float}{TRUE to float the table of contents to the left of the main document content}

\item{code_folding}{Enable document readers to toggle the
display of R code chunks. We change the default to \code{"hide"}.
See \code{rmarkdown::\link[rmarkdown]{html_document}}}

\item{self_contained}{Produce a standalone HTML file with no external dependencies...}

\item{highlight}{Syntax highlighting style}

\item{css}{One or more css files to include in addition
to this format's css.}

\item{lib_dir}{Directory to copy dependent HTML libraries
(e.g. jquery, bootstrap, etc.) into...}

\item{...}{other arguments passed to
\code{rmarkdown::\link[rmarkdown]{html_document}}}
}
\value{
R Markdown output format to pass to
  \code{rmarkdown::\link[rmarkdown]{render}}
}
\description{
Less simple, but we enable a floating table-of-contents,
\code{code_folding}, syntax highlighting, insert some custom css,
then pass the rest of our arguments to
\code{rmarkdown::\link[rmarkdown]{html_document}}
}
\examples{
\dontrun{
  rmarkdown::render("foo.Rmd", html_doc_5())
}
}
\seealso{
\url{http://rmarkdown.rstudio.com/developer_custom_formats.html}
}

