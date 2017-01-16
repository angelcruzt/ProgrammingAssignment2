## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
    Asignar <- function(y) 
      {
        x <<- y
        inv <<- NULL
      }
    Recibir <- function() 
    {
      x
    }
    AsignarInverse <- function(inverse) 
      {
        inv <<- inverse
      }
    RecibirInverse <- function() 
      {
        inv
      }
  list(Asignar = Asignar,
       Recibir = Recibir,
       AsignarInverse = AsignarInverse,
       RecibirInverse = RecibirInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inv <- x$RecibirInverse()
  if (!is.null(inv)) {
    message("Almacenando Datos...")
    return(inv)
  }
  mat <- x$Recibir()
  inv <- solve(mat, ...)
  x$AsignarInverse(inv)
  inv
}
