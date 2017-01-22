## The makeCacheMatrix combines the original matrix and four functions together 
##Therefore it is easier to retrieve the original matrix and the inversed matrix 
##CacheSolve retrieves the inversed matrix or calculates the inversed matrix 

## This function creates a matrix and stores it in an object

makeCacheMatrix <- function(x = matrix()) {a <- NULL
  set <- function(y) {
    x <<- y
    a <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) a <<- inverse
  getInverse <- function() a
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## This function is used to retrieve the inverse of a matrix
cacheSolve <- function(x, ...) { a <- x$getInverse()
  if (!is.null(a)) {
    message("getting cached data")
    return(inv)
  }
  b <- x$get()
  a <- solve(b, ...)
  x$setInverse(a)
  a
        ## Return a matrix that is the inverse of 'x'
}
