## ----variables,echo=TRUE-------------------------------------------------
## Arrays/vector

new_numbers <- c(1,2,3) ##new_numbers can be called any name except names of already existing functions! The c() command is to concatanate objects between the brackets. Try using without c(). There will be an error. Also never call any variable by the name "c"! You will replace a vital R function!

print(new_numbers)

new_vector <- c("word","is","long") ##This is a vector of characters. Always write non numerical objects in single/double quotes.

print(new_vector)

new_matrix <- matrix(0,ncol = 3,nrow = 3) ##This is a 3x3 numerical matrix full of zeroes

print(new_matrix)

new_data_frame <- data.frame(new_numbers,new_vector,new_matrix) ##This is a table/data frame that has all the above three objects combined into a table

print(new_data_frame)

new_list <- list(new_numbers, new_vector, new_matrix) ##This is a list that has all the above three objects combined into a list

print(new_list)


## ----max numbers, echo=TRUE----------------------------------------------

##Hands on variable declaration

numbers <- c(1,3,7,4,3,4,3,3,7,3)

max_no <- 0

current_number <- numbers[1] ##square bracket is the index. In R, indexing begins with 1 unlike Python (0)!

print(numbers)
print(max_no)
print(current_number)


##Hands on: Conditional statements

numbers <- c(1,3,7,4,3,4,3,3,7,3)

max_no <- 0

#checkpoint
current_number <- numbers[1]

if(current_number > max_no) {
  max_no <- current_number
} else if (current_number == max_no) {
  max_no <- max_no
} else {
  max_no <- max_no
}

##Note the difference in syntax. Curly brackets are used instead of colons. Also indentations are not important in R! However they help one understand which part of the code is under which condition. "==" means asking if the two are equal. "=" means change one thing to the other. Now go back to the checkpoint and change "numbers[1]" to "numbers[2]" without running the earlier code. And do this till the last item in "numbers". Now finally print the max_no

print(max_no)

##is it correct? Did you get tired of changing "numbers[]" every time? Lets use a for loop!
numbers <- c(1,3,7,4,3,4,3,3,7,3)

max_no <- 0

for(i in 1:10) { ##this will now change "i" from 1 to 10 (length of "numbers") in every iteration. Note the syntax here! Very important! Note colon indicates a series of numbers. Only for numbers!
  current_number <- numbers[i]
  if(current_number > max_no) {
    max_no <- current_number
  } else {
    max_no <- max_no
  }
}

print(max_no)

##Now lets use a while loop

numbers <- c(1,3,7,4,3,4,3,3,7,3)

max_no <- 0

last_number <- length(numbers) ##the length function tells you how long the object is. Exercise: try this for the different variables you have already declared.

i <- 1
while(i <= last_number) { ##the loop will keep running while i is less than or equal to 10 and then stop
  current_number <- numbers[i]
  if(current_number > max_no) {
    max_no <- current_number
  } else {
    max_no <- max_no
  }
  i <- i+1 ##here we are now manually iterating i to i+1 so that it checks the next number in the next iteration. Exercise: try putting this line in other places in the while loop and see what happens. Do you get the same max_no at the end. Why??
  
}

print(max_no)

##THERE IS A FUNCTION THAT CAN DIRECTLY TELL YOU THE MAX VALUE IN THE ARRAY:

numbers <- c(1,3,7,4,3,4,3,3,7,3)

max_no <- max(numbers)

print(max_no)


## ----prime_nos, echo=T---------------------------------------------------

prime_nos <- NULL ##an empty object

for(i in 1:10000) { ##start a for loop for upto 10000 numbers just as a start
  current_number <- i
  
  divide_by <- 1:current_number ##divide the current number by all numbers upto current number.
  
  remainder <- current_number %% divide_by ## the "%%" gives the remainder of division between current_number and all numbers in the divide_by array
  
  zero_remainder <- which(remainder == 0) ##which of the remainders are equal to zero
  
  divisors <- length(zero_remainder) ##the number of zero remainders
  
  if(divisors==2) { ##a prime number has only two divisors, the number itself and 1
    prime_nos <- c(prime_nos,current_number) ##combine the empty object with current number. this vector will keep growing throughout the loop 
  }
  
  if(length(prime_nos)==100) { ##when the length of prime numbers is 100, break the for loop and stop
    break
  }
}

print(prime_nos)


