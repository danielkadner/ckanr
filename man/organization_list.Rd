% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/organization_list.R
\name{organization_list}
\alias{organization_list}
\title{List organization}
\usage{
organization_list(order_by = c("name", "package"), decreasing = FALSE,
  organizations = NULL, all_fields = TRUE, limit = 31,
  url = get_default_url(), as = "list", ...)
}
\arguments{
\item{order_by}{(character, only the first element is used).
The field to sort the list by, must be \code{name} or \code{packages}.}

\item{decreasing}{(logical). Is the sort-order is decreasing or not.}

\item{organizations}{(character or NULL). A list of names of the
organizations to return. NULL returns all organizations.}

\item{all_fields}{(logical). Return the name or all fields of the object.}

\item{limit}{(numeric) The maximum number of organizations to return (optional, default: 31)}

\item{url}{Base url to use. Default: \url{http://data.techno-science.ca}. See
also \code{\link{ckanr_setup}} and \code{\link{get_default_url}}.}

\item{as}{(character) One of list (default), table, or json. Parsing with table option
uses \code{jsonlite::fromJSON(..., simplifyDataFrame = TRUE)}, which attempts to parse
data to data.frame's when possible, so the result can vary from a vector, list or
data.frame. (required)}

\item{...}{Curl args passed on to \code{\link[httr]{POST}} (optional)}
}
\description{
List organization
}
\examples{
\dontrun{
ckanr_setup(url = "http://demo.ckan.org/")

# list organizations
res <- organization_list()
res[1:2]

# Different data formats
organization_list(as = 'json')
organization_list(as = 'table')
}
}
