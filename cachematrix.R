## Marco Teixeira
## Johns Hopkins and Coursera
## Data Science Specialization
## R Programming course - Week 3
## Programming Assignment 2

## This function accepts a matrix "x" and creates 3 new function: set(), get() and
## getinv(). The set() function creates the inverse of the x matrix, the get() 
## function returns the matrix that was initialy passed by argument to the function
## and the getinv() function returns the inverse of x matrix.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
   m <<- solve(y) 
  }
  get <- function() x
  getinv <- function() m
  list(set = set, get = get, getinv = getinv)
}


## The following function return a matrix that is the inverse of 'x'. If the
## inverted matrix is already calculted (the m variable) that it returns it from
## cache, otherwise it calls the set() function from above and return the inverse
## of the matrix

cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- x$set(data)
  m
}
