## Functions will cache the inverse of a matrix

## Function to store 4 additional functions

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL
        set <- function (y) {
           x <<- y
            inv <<- NULL
}
      get <- function () x
      setinverse <- function (inverse) inv <<- inverse
      getinverse <- function () inv
      list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  }

## Inverse the matrix

 cacheSolve <- function (x, ... ) { 
    inv <- x$getinverse() 
if
 (!is.null(inv)) { 
        message( 
"getting cached data."
 ) 
return
 (inv) 
    } 
    data <- x$get() 
    inv <- solve(data) 
    x$setinverse(inv) 
    inv 
}
    

        





