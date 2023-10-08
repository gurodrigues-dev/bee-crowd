kamenetsky <- function(n) {
  if (n < 0) {
    return(0)
  }

  if (n <= 1) {
    return(1)
  }

  x <- ((n * log10(n/exp(1))) +
        (log10(2*pi*n) / 2.0))

  return(floor(x) + 1)
}

input <- file('stdin', 'r')
line <- readLines(input, n=1)
n <- as.numeric(line)
cat(sprintf("%d\n",kamenetsky(n)))