## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## First we set the value of the matrix.
##Second, we write code to get the value of the matrix.
##Next, we set the value of inverse of the matrix.
##Then, we write code to get the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y){
x<<-y
m<<-NULL
}
get<-function(){x}
setInverse<- function(inverse) m<<-{inverse}
getInverse<-function(){m}

list(set=set, get=get,
setInverse = setInverse,
getInverse = getInverse)

}


## Write a short comment describing this function
##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
##If the inverse has already been calculated,the cachesolve should retrieve the inverse from the cache.
##Otherwise,we compute inverse of the matrix using the solve function.

cacheSolve <- function(x, ...) {

        ## Return a matrix that is the inverse of 'x'
m<-x$getInverse()
if(!is.null(m)){
message("getting cached data")
return(m)
}
mat<-x$get()
m<-solve(mat,...)
x$setInverse(m)
m
}
