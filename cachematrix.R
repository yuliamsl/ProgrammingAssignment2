## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inval <- NULL
    set <- function(y) {
        x <<- y
        inval <<- NULL
    }
    get <- function() x
    setinv <- function(inverse) inval <<- inverse
    getinv <- function() inval
    list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
            inval <- x$getinv()
    if(!is.null(inval)) {
        message("getting cached data...")
        return(inval)
    }
    data <- x$get()
    inval <- solve(data)
    x$setinv(inval)
    inval
}
