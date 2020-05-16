makeCacheMatrix <- function(x = matrix()) {
        inverseM <- NULL
#         function to set x
        set <- function(y){
                x <<- y
                inverseM <<- NULL
        }
#       function to get x
        get <- function() { x }

#       function to set the inverse 
        setInverse <- function(inverseArg){
                print("here")
                inverseM <<- inverseArg
        }
        
#       function to get the inverse
        getInverse <- function(){inverseM }

        return(list(set = set, get = get ,setInverse = setInverse, getInverse = getInverse))
}


## Write a short comment describing this function

# The function first check if the inverse exist or not if yes it return it
# If the inverse is not there, it will calculate and store the inverse
# then return it to the user
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverseM <- makeCacheMatrix(x)$getInverse()
