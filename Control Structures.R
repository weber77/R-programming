if ( 2>3) "false"
if ( 2 < 3 ) "true"

x <- "foo"
if ( 2 < 3) x <- "bar"

if ( 3 > 2) x <- "bar" else "baz"

if ( 3 > 2){
  x <- "true"
}


# Don't compare a vector in an if statement. Bcs only the first element is used
v <- 1:5
if ( v < 3) "bar" else "baz"

#For vectorized version of if us ifelse()

ifelse(v > 3, "bar", "baz")

(x <- c(6:-4))
sqrt(ifelse(x >= 0, x, NA)) 
(x <- seq(as.Date("2000-02-29"), as.Date("2004-10-04"), by = "1 month"))


maybe_square <- function(x){
  if (x %%2 == 0){
    x**2
  }else{
    x
  }
}

maybe_square <- function(x){
  ifelse(x%%2 == 0, x^2, x)
}

maybe_square <- Vectorize(maybe_square)
maybe_square(1:5)

################### For loop #####################

x <- 1:5
total <- 0
for (elt in x) total <- total + elt
total

#As with if statment if you want the body to contain more than one expression, use brackets
for (index in seq_along(x)) {
  elt <- x[index]
  total <- total + elt
}

while( index <= length(x)){
  elt <- x[index]
  index <- index +1
  total <- total +elt
}


repeat{
  elt <- x[index]
  total <- total + elt
  index <- index + 1
  
  if(index > length(x)) break
}

#Factors are ordered alphabetically by default
f <- factor(c("small", "small", "medium", "large", "small", "large"))
f
levels(f)

ff <- factor(c("small",  "small", "medium", "large", "small", "large"),
             levels = c("small", "medium", "large"))
levels(ff)

summary(f)
summary(ff)

#By default factors dont treat levels as ordered. to emphasize the order 
#you need to specify if as below
of <- factor(c( "small", "medium", "large", "small", "large"),
             levels = c("small", "medium", "large"),
             ordered = TRUE)
of

#We could also use the oredered() function
ordered(ff)
ordered(f, levels = c("small", "medium", "large"))

v <- 1:4
names(v) <- LETTERS[1:4]
v

(ff <- factor(LETTERS[1:4]))
v[ff]

(ff <- factor(LETTERS[1:4], levels = rev(LETTERS[1:4])))
