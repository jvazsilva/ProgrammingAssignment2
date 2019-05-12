## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function creates a list containing a function to: set the value of the vector, get the value of the vector, set the inverse and get the inverse.


makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(solve) i <<- solve
  getinv <- function() i
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

## Write a short comment describing this function

#This function calculates the inverse of the previous matrix created with the above function. However, it first checks to see if the inverse has already been calculated. 

## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
  i <- x$getinv()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  i
}