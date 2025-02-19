% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotGeneSets.R
\name{PlotGeneSets,PathwayObject-method}
\alias{PlotGeneSets,PathwayObject-method}
\title{PlotGeneSets}
\usage{
\S4method{PlotGeneSets}{PathwayObject}(
  Object,
  fontsize = 5,
  legend = T,
  annotation.mol = F,
  main = "",
  RR.max = "",
  cluster.order = ""
)
}
\arguments{
\item{Object}{a PathwayObject}

\item{fontsize}{a numeric with the fontsize for plotting}

\item{legend}{add a legend to the plot}

\item{annotation.mol}{should the genes from the genes set be added to the plot.}

\item{main}{is the plot title}

\item{RR.max}{is the maximum distance size to be added, it cutsoff the max to this. Usefull if the distance score gets very high.}

\item{cluster.order}{is a user defined order of the clusters in the heatmap.}

\item{PathwayObject}{a PathwayObject}
}
\value{
plot
}
\description{
PlotGeneSets
}
\examples{
Great.files <- c(system.file("extdata", "MM10.GREAT.KO.uGvsMac.bed.tsv",
                             package = "GeneSetCluster"),
system.file("extdata", "MM10.GREAT.KO.uGvsMac.bed_BCKGRND.tsv", package = "GeneSetCluster"),
system.file("extdata", "MM10.GREAT.WT.uGvsMac.bed.tsv", package = "GeneSetCluster"),
system.file("extdata", "MM10.GREAT.WT.uGvsMac.bed_BCKGRND.tsv", package = "GeneSetCluster"))
Great.files.bckgrnd <- Great.files[grepl("BCKGRND", Great.files)]


Great.bckgnrd.Object1 <- LoadGeneSets(file_location = Great.files.bckgrnd,
                                      groupnames= c("KO", "WT"),
                                      P.cutoff = 0.05,
                                      Mol.cutoff = 5,
                                      Source = "Great",
                                      Great.Background = TRUE,
                                      type = "Canonical_Pathways",
                                    topranks = 20,
                                   structure = "SYMBOL",
                                   Organism = "org.Mm.eg.db",
                                   seperator = ",")
man.Great.Object1 <- ManageGeneSets(Object = Great.bckgnrd.Object1,
                                   keep.type =c("Disease Ontology",
                                   "GO Biological Process" ),
                                   exclude.type="")
man.Great.Object2 <- CombineGeneSets(Object = man.Great.Object1)
man.Great.Object3 <- ClusterGeneSets(Object = man.Great.Object2,
                                     clusters = 5,
                                     method = "kmeans")
 PlotGeneSets(Object = man.Great.Object3, fontsize =5,
              legend = TRUE,
              annotation.mol=FALSE,
              main="man.Great.Object3",
              RR.max = 50)
}
