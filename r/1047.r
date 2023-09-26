input <- file('stdin', 'r')
line <- readLines(input, n=1)
nums <- strsplit(line, " ")[[1]]
h1 <- as.integer(nums[1])
m1 <- as.integer(nums[2])
h2 <- as.integer(nums[3])
m2 <- as.integer(nums[4])

hours <- h2 - h1
if (hours < 0) {
  hours <- 24 - abs(hours)
}

mins <- m2 - m1
if (mins < 0) {
  hours <- hours - 1
  mins <- 60 - abs(mins)
}

if (hours < 0) {
  hours <- 24 + hours
}

if (hours == 0 && mins == 0) {
  hours <- 24
}

cat(sprintf("O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n", hours, mins))