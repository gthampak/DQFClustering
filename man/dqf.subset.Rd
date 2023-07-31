\name{dqf.subset}
\alias{}
\title{Creates dqf.s object used to calculate subsets of averaged DQFs}
\usage{
dqf.subset(data = NULL, gram.mat = NULL, g.scale=2, angle=c(45), kernel="linear", p1=1, p2=0, n.splits=100, subsample=50, z.scale=TRUE, k.w=3, adaptive=TRUE, G="norm")
dqf.subset(
  data = NULL,
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

}
\arguments{
  \item{data}{data frame or matrix}
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
hello()
}
