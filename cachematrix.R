## This program caches the inverse of a matrix--it contains two methods:
## one that creates a special "matrix" object that can cache its inverse and
## one that computes  it if it hasn't been cached.

## contains getter and setter methods for the matrix x and its inverse, m.
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(inverse) m <<- inverse
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
