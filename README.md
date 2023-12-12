# KMEANS599

INSTILLATION

```{r}
install.packages("KMEANS599")
##OR
if(require("remotes"))install.packages("remotes")
remotes::install_github("trevb11/KMEANS599")
```

USAGE

The main function is KMEANS599 for which you must specify 3 arguments:

data.matrix specifies the matrix of numeric data.
K is an integer of the maximum number of clusters.
max_iterations is an integer specifying the number of iterations of the algorithm. 

The function KMEANS599 returns a list containing a numeric vector of cluster assignments, a vector of within-cluster sum of squared error, a vecotr of cluster centers, and the number of iterations.

Cluster Assignment Vector
```{r}
set.seed(123)
num_samples_per_digit = 10
zip.data <- zip.dt[,.SD[sample(.N, num_samples_per_digit)], by = V1]
zip.x <- as.matrix(zip.data[,-1])
model <- KMEANS599(zip.x, 10, 100)

print(model$cluster[1:5])
[1] 6 8 8 8 6
```
Retrieving Centers

```{r}
print(model$centers[1:20])
[1] -1.0000000 -1.0000000 -1.0000000 -1.0000000 -1.0000000 -1.0000000 -1.0000000 -1.0000000 -1.0000000
[10] -1.0000000 -1.0000000 -1.0000000 -1.0000000 -1.0000000 -1.0000000 -0.9881176 -1.0000000 -1.0000000
[19] -1.0000000 -0.9971000

```
Retrieving Within Cluster Sum of Squared Error

```{r}
print(model$tot.withinss[1])
[1] -27026.56
```

Retrieving Iterations Used

```{r}
print(model$iter[1])
[1] 4
```
