% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hierarchie.R
\name{hier_commune_uu}
\alias{hier_commune_uu}
\title{Renvoie le code d'unite urbaine a partir du code commune}
\usage{
hier_commune_uu(code_commune)
}
\arguments{
\item{code_commune}{Un vecteur de code commune.}
}
\value{
Un vecteur de code d'unité urbaine.

Jeu de données source : \code{geographie::ods_geo}.\cr
}
\description{
Renvoie le code d'unité urbaine à partir du code commune.
}
\examples{
# Un exemple avec deux communes, l'une dans une unitÃ© urbaine, l'autre non
geographie::hier_commune_uu(c("01001", "33003"))

}
