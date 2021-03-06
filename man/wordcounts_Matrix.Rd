% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dfr_docs.R
\name{wordcounts_Matrix}
\alias{wordcounts_Matrix}
\title{Convert a word-counts data frame into document-term matrix}
\usage{
wordcounts_Matrix(counts)
}
\arguments{
\item{data}{frame with columns \code{id, word, weight}}
}
\value{
sparse \code{link[Matrix]{Matrix}} with documents in rows and words
  in columns, with id and word values as dimnames
}
\description{
This function simply transforms a data frame like that from
\code{\link{read_wordcounts}} into a document-term matrix (in
\code{\link[Matrix]{sparseMatrix]}} format). That is, it converts
from long to wide format. This is useful in itself if you want to do
matrix manipulations and also a convenient format for interchange
with other text-mining packages.
}
\details{
In particular, this function is meant to help with packages that
expect document-term matrices in the \pkg{slam} package's simple
triplet matrix type. A \code{Matrix} can be automatically coerced to
a \code{simple_triplet_matrix}.
}
\seealso{
\code{\link{read_wordcounts}}, \code{\link{instances_Matrix}} for
  the same conversion from MALLET's format
}

