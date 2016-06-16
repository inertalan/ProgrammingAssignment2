## Assignment2 for R programming
##Alan.Wang
##alan1992919@126.com

## This R script includes 2 functions and a test, you can run it all at once to
## test it

## 1.makeCacheMatrix
## makeCacheMatrix returns a list with 3 functions, you can input a matrix in 
## makeCacheMatrix, setMatrix also allows you to set a matrix, with solveMatrx,
## you can solve the matrix you've just input in m, getSolve allows you to get
## the inversed matrix.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        
        setMatrix <- function(z) x <<-z
        
        solveMatrix <- function(){
                m <<- solve(x)
        }
        
        getSolve <- function(){
                m
        }
        list(set = setMatrix,
             sol = solveMatrix,
             get = getSolve)
}


## 2.cachesolve
## this function allows you to either get the matrix from the cache, or compute 
## it when it doesn't exist

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$get()
        if (!is.null(m)){
                message("Getting cached matrix")
                return(m)
        }
        message("Can not find data from cache, computing now")
        x$sol()
        m <<- x$get()
        return(data)
}


## 3.test
## R the code, test my project!
## Thanks!
data <- matrix(rnorm(16),4,4)

test <- makeCacheMatrix(data)

cacheSolve(test)