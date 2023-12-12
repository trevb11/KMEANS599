\name{KMEANS599}
\alias{KMEANS599}
\title{K-Means}
\description{Calls code for \code{\line{KMEANS599} function that computs kmeans clustering for an input feature matrix.}
\usage{KMENS(data.matrix, 
    K = number.of.clusters,
    max.iterations = max.iterations)}

  \item{data.matrix}{Matirx of numeric data.}
  \item{K}{Maximum number of principal components to compute}


\value{List output from \code{\link{KMEANS599} which represents a kmeans clustering model.}

\author{Jared Benajmin Silverstein}

KMEANS599 <- function(data.matrix, K, max_iterations = max.iterations){
  

  #parse data as a numeric matrix
  if (!is.matrix(data.matrix) || !is.numeric(data.matrix)){
    stop("data.matrix must be a numeric matrix")
  }
  
  NROWS <- nrow(data.matrix)
  NCOLS <- ncol(data.matrix)
  
  initial_centers <- data.matrix[sample(1:NROWS, K), , drop = FALSE]
  
  cluster_assignments <- rep(0, NROWS)
  
  centers <- initial_centers
  
  for (iteration in 1:max_iterations){
    
    #assign each data point to nearest center
    
    distances <- matrix(NA, nrow = NROWS, ncol = K)
    for (k in 1:K) {
      
      diff_matrix <- sweep(data.matrix, 2, centers[k, ], "-")
      distances[, k] <- rowSums(diff_matrix^2)
      
    }
    
    labels <- apply(distances, 1, which.min)
    
    #update centers
    new_centers <- matrix(NA, nrow = K, ncol = NCOLS)
    for (k in 1:K) {
      cluster_data <- data.matrix[labels == k, ]
      if (nrow(cluster_data) > 0) {
        new_centers[k, ] <- colMeans(cluster_data, na.rm = TRUE)
      } else {
        new_centers[k, ] <- centers[k, ]
      }
    }
    
    if (all(cluster_assignments == labels)) break
    
    centers <- new_centers
    cluster_assignments <- labels
  }
  
    within_cluster_sumsq <- sum(rowSums((data.matrix - centers[cluster_assignments, ]^2)))
                              
    result <- list()
    result$cluster <- cluster_assignments
    result$centers <- centers
    result$tot.withinss <- within_cluster_sumsq
    result$iter <- iteration
    
    return(result)
}
