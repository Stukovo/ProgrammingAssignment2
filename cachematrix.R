## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	
	## Initialization
	inv <- NULL
	
	## Set the matrix
	set <- function(y) {
			x <<- y
			inv <<- NULL
	}
	
	## Get the matrix and return the matrix
	get <- function() x
	
	## Set the inverse matrix
	setInverse <- function(inverse) inv <<- inverse
	
	## Get the inverse matrix
	getInverse <- function() inv
	
	## Return the list of methods
	list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <= x$getInverse()
        ## Return the inverse
        if(!is.null(inv)){
        	message("getting cached data")
        	return(inv)
        }
        ## Get the matrix 
        mat <- x$get()
        
        ## Calculate the inverse
        inv <- solve(mat, ...)
        
        ## Set the inverse
        x$setInverse(inv)
        
        ## Return matrix
        inv
}
