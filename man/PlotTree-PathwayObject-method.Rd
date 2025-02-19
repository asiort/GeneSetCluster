% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotTree.R
\name{PlotTree,PathwayObject-method}
\alias{PlotTree,PathwayObject-method}
\title{PlotTree}
\usage{
\S4method{PlotTree}{PathwayObject}(Object, fontsize = 3, main = "", nodenames = TRUE, wordcloud = TRUE)
}
\arguments{
\item{Object}{a pathway object}

\item{fontsize}{a numeric with the fontsize for plotting rownames/colnames}

\item{main}{is the plot title}

\item{nodenames}{boolean to add names to the nodes}

\item{wordcloud}{boolean to add wordcloud annotations of each cluster}
}
\value{
plot
}
\description{
PlotTree
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
                                     method = "Hierarchical")
 PlotTree(Object = man.Great.Object3, fontsize = 3,
              main= "man.Great.Object3",
              nodenames = TRUE,
              wordcloud = TRUE)
}
