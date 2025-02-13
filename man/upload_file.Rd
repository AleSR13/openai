% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/upload_file.R
\name{upload_file}
\alias{upload_file}
\title{Upload file}
\usage{
upload_file(
  file,
  purpose = c("search", "answers", "classifications", "fine-tune"),
  openai_api_key = Sys.getenv("OPENAI_API_KEY"),
  openai_organization = NULL
)
}
\arguments{
\item{file}{required; a length one character vector.}

\item{purpose}{required; defaults to \code{"search"}; a length one character
vector, one among \code{"search"}, \code{"answers"}, \code{"classifications"}, and
\code{"fine-tune"}.}

\item{openai_api_key}{required; defaults to \code{Sys.getenv("OPENAI_API_KEY")}
(i.e., the value is retrieved from the \code{.Renviron} file); a length one
character vector. Specifies OpenAI API key.}

\item{openai_organization}{optional; defaults to \code{NULL}; a length one
character vector. Specifies OpenAI organization.}
}
\value{
Returns a list, elements of which contains ID of the uploaded file
and other supplementary information.
}
\description{
Uploads a file that will be used for various purposes. The size of the
storage is limited to 1 Gb. See \href{https://beta.openai.com/docs/api-reference/files/upload}{this page} for details.
}
\details{
For arguments description please refer to the \href{https://beta.openai.com/docs/api-reference/files/upload}{official documentation}.
}
\examples{
\dontrun{
file <- system.file("extdata", "classification-file.jsonl", package = "openai")
upload_file(file = file, purpose = "classification")
}
}
\seealso{
Other file functions: 
\code{\link{delete_file}()},
\code{\link{list_files}()},
\code{\link{retrieve_file_content}()},
\code{\link{retrieve_file}()}
}
\concept{file functions}
