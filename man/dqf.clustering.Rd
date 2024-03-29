\name{dqf.clustering}
\alias{}
\title{Using DQF for Clustering}
\usage{
dqf.clustering(
  data = NULL,
  dqf.s=NULL,
  initial.clusters=NULL,
  n.clusters=NULL,
  cluster.method=NULL,
  cluster.param=NULL,
  gram.mat = NULL,
  g.scale=2,
  angle=c(45),
  kernel="linear",
  p1=1,
  p2=0,
  n.splits=100,
  subsample=50,
  z.scale=TRUE,
  k.w=3,
  adaptive=TRUE,
  G="norm")
}
\description{
User interactive clustering algorithm. Given a data set, initial clustering is performed where the initial number of clusters exceed anticipated final number of clusters. Users specify which clusters to combine based on averaged DQFs for respective clusters and points of interest. Modified from dqf.outlier in the dqfAnomaly package hosted on GabeChandler github.

The function returns an object containing \code{dqf.s} object for speeding up future runs of \code{dqf.clustering} and \code{final.clusters}, a vector for final cluster assignments.
}
\arguments{
  \item{data}{data frame or matrix}
  \item{dqf.s}{dqf subset object (output from \code{\link{dqf.subset}} function) (If provided, avoids long \code{\link{dqf.subset}} recalculation)}
  \item{initial.clusters}{vector of integers corresponding to clusters each data point starts in. Defaults to 10.}
  \item{n.clusters}{integer to specify number of clusters in initial cluster calculation (ignored if initial clusters provided)}
  \item{cluster.method}{Input `HC` for hierarchical clustering or `KM` k-means clustering (defaults to 'HC')}
  \item{cluster.param}{Input linkage type for \href{https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/hclust}{hierarchical clustering} or n.starts for \href{https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/kmeans}{k-means clustering}. Defaults to 'single' linkage for HC and 40 for KM.}
  \item{gram.mat}{alternatively, the precompute Gram matrix}
  \item{g.scale}{scales the base distribution G}
  \item{angle}{vector of angles of cone from midline (must be between 0 and 90) (used in calculation of depths)}
  \item{kernel}{of form "linear", "rbf" or "poly", or a user defined function}
  \item{p1}{first parameter for kernel (if required)}
  \item{p2}{second parameter for kernel (if required)}
  \item{n.splits}{integer number of base points to compute DQF at}
  \item{subsample}{integer number of random pairs to base averaged DQF on}
  \item{z.scale}{logical to z-scale data prior to analysis}
  \item{k.w}{integer number of points to windsorize at each extreme of data}
  \item{adaptive}{logical to use adaptive DQF (windsorized st dev)}
  \item{G}{base distribution: "norm" or "unif"}
}
\examples{
dqf.c <- dqf.clustering(data=data,dqf.s=dqf.s,n.clusters=6)
dqf.c <- dqf.clustering(data=data,n.clusters=10,cluster.method="HC",cluster.param="average")
}
