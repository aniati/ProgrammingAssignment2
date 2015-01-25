## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# set the value of a matrix
# get the value of a matrix
# set the value of the inverse of matrix
# get the value of the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
	inv <-NULL
	set <-function(y){
	x <<-y
	inv <<-NULL
      }
	get <- function() x
	setInverse <- function(inverse) inv <<- inverse
	getinverse <- function() inv
	list(set =set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function
# checks to see if inverse has been computed- if so gets the inverse from the cache, otherwise
# computes the  inverse and set the inverse in the cache for next time

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	inv <- x$getinverse()
	if (!is.null(inv)){
		message("getting cached data.")
		return(inv)
      	}

	data <- x$get()
	inv <- solve(data)
	x$setinverse(inv)
	inv
}
