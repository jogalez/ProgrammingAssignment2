## Put comments here that give an overall description of what your
## functions do

## This following functions calculate a inverse of the matrix. 
## if the inverse is already calculated, the function return the
## cache value.

## Write a short comment describing this function
## The following function takes a matrix as an input and return the inverse of it
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## Write a short comment describing this function
## The following function return the cache value of a inverse matrix previosly valuated
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ....)
        x$setsolve(m)
        m
}
