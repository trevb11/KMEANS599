#' K means clustering algorithm
#' 
#' @param data.matrix  input feature matrix
#' @param K scalar, integer number of clusters
#' @param max_iterations scalar integer number of maximum iterations
#' 
#'
#' @return list containing cluster assignment vector of integers, centers matrix, and within cluster squared error
#' 
#' @examples
#' zip.dt <- data.table::fread("zip.test.gz") 
#' zip.data <- zip.dt[,.SD[sample(.N, num_samples_per_digit)], by = V1]
#' data(zip.data)
#' zip.x <- as.matrix(zip.data[,-1])
#' zip.y <- zip.data[,1]
#' K <- 10
#' max_iterations <- 100
#' KMEANS599(zip.x, K, 100)
