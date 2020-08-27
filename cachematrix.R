## Put comments here that give an overall description of what your
## functions do

## The functions calculate the inverse of the matrix and then save it in the cache. 

## The function makeCacheMatrix is the first step that creates the matrix and the function cacheSolve solves the matrix, then gets the inversion and saves it in the cache.

## Write a short comment describing this function

## This function makeCacheMatrix creates the matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        
        get <- function(){
                x
        }
        setinverse <- function(inverse){
                i <<- inverse
                }
        getinverse <- function() i
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
##This function solves the matrix, then gets the inversion and saves it in the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mat <- x$getinverse()
        if(!is.null(mat)) {
         message("getting cached data.")
                return(mat)
        }
        data <- x$get()
        mat <- solve(data)
        x$setinverse(mat)
        mat
}
