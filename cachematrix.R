## Pair of functions that cache the inverse of a matrix

## Create a matrix to store cache

makeCacheMatrix <- function(x = matrix()) {
  minv <- NULL
  set <- function(y) {
    x <<- y
    minv <<- NULL
  }
  get <- function() x
  setminv <- function(invm) m <<- invm
  getminv <- function() minv
  list(set = set, get = get,
       setminv = setminv,
       getminv = getminv)
}


## Solve for the inverse matrix
cacheSolve <- function(x, ...) {
  invm <- x$getminv()
  if(!is.null(invm)) {
    message("getting cached data")
    return(invm)
  }
  data <- x$get()
  #calculate inverse
  invm <- solve(data)
  x$setminv(invm)
  invm
}
