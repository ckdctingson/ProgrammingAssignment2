## This is Programming assignment 2 for R Programming course
## The following functions below, gets the inverse of a of a special matirx

## The first function, makeCacheMatrix creates a special "vector", which is really a list containing a function to

## set the value of the vector
## get the value of the vector
## set the value of the inverse
## get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## The following function calculates the inverse of the special "vector" created with the above function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  mat <- x$get()
  i <- solve(mat, ...)
  x$setinverse(i)
  i
}
