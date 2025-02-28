% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotPathwayCluster.R
\name{PlotPathwayCluster}
\alias{PlotPathwayCluster}
\title{PlotPathwayCluster}
\usage{
PlotPathwayCluster(Object, nPathway = 6, doORA = TRUE, wordcloud = TRUE)
}
\arguments{
\item{Object}{a pathway object}

\item{nPathway}{minimum number of pathways per group}

\item{doORA}{boolean perform ORA analysis}
}
\value{
plot
}
\description{
Plots a correlation matrix showing the correlation between the pathways and a functional annotation of the group of pathways based on GO terms descriptions.
}
