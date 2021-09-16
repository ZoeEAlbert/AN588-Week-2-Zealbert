---
  title: "dalarre_OriginalHomeworkCode_01"
output: html_document
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:
  
  ```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:
  
  ```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.


## MODULE 04 CHALLENGES

## Challenge 1

```{r}
v <- c("Stately, plump Buck Mulligan came from the stairhead, bearing a bowl of lather on which a mirror and a razor lay crossed.")
## First, I create a vector containing the sentence and I call it v
##ZOE: I tried to move your commentary to below your code and I think it messed something up.  If that is the case, please ignore.  It ran both before and after I moved it. 

## With this function, I split the vector in the different words and I call this new separate list w (I don't know why it is stored as a list and not as a vector), 
#and I call "string" the only element in the list so i can refer to it later
w <- stringr :: str_split(v, pattern = " ")
names(w) <- c("string")
##ZOE: When I try to run this, I get the error "there is no package called 'stringr'.  I feel like this is an issue on my end though?

##This function is for removing punctuation and special characters (and it gets the info stored as a vector)
w<- gsub("[[:punct:]]","",w$string)


## With this function I select every third element from the vector with the separate words
w[seq(from = 1 , to = 22, by = 3)]

###
```


## Challenge 2

```{r}

## I create the matrix m
m <- matrix(data = 1:80, nrow = 8, ncol = 10, byrow = FALSE)

## This creates a vector containing the values of the 2nd, 3rd and 6th column of the matrix m
x <- c(m[,2],m[,3],m[,6])
x

## This creates a vector containing the values from the 6th to the 8th row of the matrix m
y <- c(m[6:8,])
y

## This creates a vector containing the elements from row 2, column 2 to row 6, column 9 of the matrix m
z <- m[2,2]:m[6,9]
z
##ZOE: I did not have a single issue running or understanding your code. When looking at your code I realized I could use ":" and "," in the same code.  It was really clear and helpful. 
```


## Challenge 3

```{r}

## This creates an array of 5x5x4x4 (4 dimensions) with elements from 400 to 1 in a descending order
a <- array(data = 400:1, dim = c(5,5,4,4))

## The following return what is asked in the challenged
a[1,1,1,2]
a[2,3,2,]
a[1:5,1:5,3,3]

##ZOE: No issues here. Very clear code and it all ran. 

```


## Challenge 4

```{r}

## This creates a list with the Strepsirhini
Lemuroidea <- c("Cheirogaleidae", "Lepilemuridae", "Indriidae", "Lemuridae",
                "Daubentoniidae")
Lorisoidea <- c("Lorisidae", "Galagidae")
Strepsirhini <- list(Lemuroidea, Lorisoidea)
names(Strepsirhini) <- list("Lemuroidea", "Lorisoidea")

## This creates a list with the Haplorhini
Tarsioidea <- c("Tarsiidae")

Catarrhini <- c("Cercopithecidae","Hylobatidae","Hominidae")
Platyrrhini <- c("Cebidae","Atelidae","Pitheciidae")
Anthropoidea <- list(Platyrrhini,Catarrhini)
names(Anthropoidea) <- list("Platyrrhini","Catarrhini")

Haplorhini <- list(Anthropoidea,Tarsioidea)
names(Haplorhini) <- list("Anthropoidea","Tarsioidea")

## This creates the complete Primates list
Primates <- list(Haplorhini,Strepsirhini)
names(Primates) <- list("Haplorhini","Strepsirhini")

Primates
##ZOE: I like the way you did this challenge.  It felt a lot more organized to me than the way I had done mine. 
```


## Challenge 5

```{r}

## This creates a matrix with the given data ordered row-wise
m3 <- matrix(data = c(3, 0, 1 ,23, 1, 2, 33, 1, 1, 42, 0, 1, 41, 0, 2), nrow = 5, ncol = 3, byrow = TRUE)
m3

## This coerces the matrix to a data frame
df3 <- as.data.frame(m3)
df3

## This coerces the second column of the data frame to be logical-valued
df3[,2] = as.logical(df3[,2])

## This coerces the third column of the data frame to be factor-valued
df3[,3] = as.factor(df3[,3])

## This shows the data type of each variable in the data frame
str(df3)

##ZOE: I got no error, when I ran this.  Your code was so simple and concise, and yet I couldn't figure it out easily for myself so it was nice to see!

```

## CHALLENGES
##In challenge 5 i had trouble making the change of type of data permanent in the df3 data frame. I looked how to do it in Google.
##In challenge 4 i had trouble because i was putting quotation marks when making the lists that contained lists. I ended up figuring out that that was the problem.
##I also had trouble with the first challenge because after using str_split the info got stored as a list so I had to name it in order to be able to work with it.
##ZOE: I added "##" to the beginning of each of these comments, but was otherwise impressed with how well you overcame those challenges.  It was not readily appearent to me that you had any difficulty. 