% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GenesPerGeneSet.r
\name{GenesPerGeneSet,PathwayObject-method}
\alias{GenesPerGeneSet,PathwayObject-method}
\title{GenesPerGeneSet}
\usage{
\S4method{GenesPerGeneSet}{PathwayObject}(Object)
}
\arguments{
\item{Object}{a PathwayObject}

\item{PathwayObject}{a PathwayObject}
}
\value{
dataframe of pathwayobjects
}
\description{
GenesPerGeneSet
}
\examples{
IPA.files <- c(system.file("extdata",
                           "MM10.IPA.KO.uGvsMac.Canonical_pathways.xls",
                            package = "GeneSetCluster"),
             system.file("extdata",
                            "MM10.IPA.WT.uGvsMac.Canonical_pathways.xls",
                             package = "GeneSetCluster"),
             system.file("extdata",
                             "MM10.IPA.KO.uGvsMac.Functional_annotations.xls",
                             package = "GeneSetCluster"),
             system.file("extdata",
                             "MM10.IPA.WT.uGvsMac.Functional_annotations.xls",
                             package = "GeneSetCluster"))
canonical.files <- IPA.files[grep("Canonical", IPA.files)]

IPA.object1 <- LoadGeneSets(file_location = canonical.files,
                         groupnames= c("KO", "WT"),
                         P.cutoff = 1.3,
                         Mol.cutoff = 5,
                         Source = "IPA",
                         type = "Canonical_Pathways",
                         structure = "SYMBOL",
                         seperator = ",")
IPA.object2 <- CombineGeneSets(Object = IPA.object1)
IPA.object3 <- ClusterGeneSets(Object = IPA.object2,
                              clusters = 7,
                              method = "kmeans")
GenesPerGeneSet(Object =IPA.object3 )
}
