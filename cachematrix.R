## This program caches the inverse of a matrix--it contains two methods:
## one that creates a special "matrix" object that can cache its inverse and
## one that computes  it if it hasn't been cached.
## Thank you for taking your time to review this program! (or not, either's fine.)

## contains getter and setter methods for the matrix x and its inverse, m.
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL       ## m will contain the inverse
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## and returns its inverse.

cacheSolve <- function(x, ...) {
                m <- x$getmean()        ##retrieves the m value from the first method
        if(!is.null(m)) {       ## if already calculated, returns the calculated value with a message
                message("getting cached data")
                return(m)
        }
        data <- x$get() ## retrieves data from x's CacheMatrix
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
