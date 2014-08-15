## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#this function creates a special 'matrix' which is realy a list which
#sets the value of the matrix
#can get the value of the matrix
#solves for the inverse of the matrix, and
#gets the solved inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {  
m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## Write a short comment describing this function
# the function determines the inverse of the matrix.
#it does this by first checking the cache for a value for the inverse of the matrix.
# if a value for the maatrix inverse is available, it collects this from the matrix.
#if none is available, it calculates a value.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  message("getting cached data")
  if(!is.null(m)) {
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
