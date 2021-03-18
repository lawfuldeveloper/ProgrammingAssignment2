## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## cachematrix function makes the object that stores two properties: the matrix, and its inverse, as well as the set and get functions for the two properties.


makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    
}




## Write a short comment describing this function

##cachesolve function returns the inverse if it is already stored in the object, otherwise it calculates the inverse and stores it in the object. The first run will be slower, the second will return "getting from cache," and be instant.

cacheSolve <- function(x, ...) {
   
   ## Return a matrix that is the inverse of 'x'

   
    inv <- x$getinverse()
    if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
      
}
