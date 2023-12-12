\name{KMEANS599}
\alias{KMEANS599}
\title{K-Means}
\description{K-Means clustering algorithm that computes K clusters for an input feature matrix.}
\usage{KMENS(data.matrix, 
    K = number.of.clusters,
    max_iterations = max_iterations)}

  \item{data.matrix}{Matirx of numeric data.}
  \item{K}{Maximum number of principal components to compute.}
  \item{max_iterations}{Maximum number of iterations of the algorithm.}


\value{List output of class KMEANS599 with elements cluster, centers, tot.withinss, and iter}
\item{cluster}{cluster assignment vector}
\item{centers}{cluster center locations}
\item{tot.withinss}{within-cluster sum of squared error}
\item{iter}{iterations}

\author{Jared Benajmin Silverstein}
