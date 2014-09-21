## Put comments here that give an overall description of what your
## functions do

## this function creates special matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmatrix <- function(matrix) m <<- solve
    getmatrix <- funciton() m
    list(set = set, get = get,
         setmatrix = setmatrix,
         getmatrix = getmatrix)
    

}


## this function Returns a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        m <- x$getmatrix()
        if(!is.null(m)) {
            message("getting cached data")
            return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrix(m)
        m
}
