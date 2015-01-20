## Put comments here that give an overall description of what your
## functions do

## These two functions are inverting a matrix.
#If the matrix has been already inverted, so the answer is taken from cashe


## Write a short comment describing this function
## This function is making an access to inverted matrix from cashe
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(solve) m <<- solve
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
  
  
}


## Write a short comment describing this function
#This function is pulling out the inverting matrix from cashe if it is possible#
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmean(m)
  m

}
