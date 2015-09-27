makeCacheMatrix <- function(x = matrix()) { # Criate the function
  
  m <- NULL 
  set <- function(y) {
  x <<- y
  m <<- NULL
  }

  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set=set, get=get, 
  setsolve = setsolve, 
  getsolve = getsolve)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) { ##Create the cacheSolve function
    m <- x$getsolve()
    if(!is.null(m)){  ## Check if m is not null
    message("getting cached data") ## Print the massage if is true
    return(m) # Return M 
    }
    data <- x$get() 
    m <- solve(data, ...) 
    x$setsolve(m)
    m 
  
## Return a matrix that is the inverse of 'x'
}