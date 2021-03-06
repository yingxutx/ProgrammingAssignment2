## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrixinv <- function(solve) m <<- solve
        getmatrixinv <- function() m
        list(set = set, get = get,
             setmatrixinv = setmatrixinv,
             getmatrixinv = getmatrixinv)
}

cacheSolve <- function(x, ...) {
        m <- x$getmatrixinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrixinv(m)
        m
}
