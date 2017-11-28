# Here we will see how we can create functions and use them in our code


# Create simple function which can say hello
def hello():
    print("Hello!")


hello()  # This should print "Hello


# Function takes two numbers as an argument and multiplies them
def multiply(num1, num2):
    return num1 * num2


print(multiply(2, 3))  # This should print 6
print(multiply(-7, 2))  # This should print -14


# However we ALWAYS have to provide two argument for above function

# Create function with default value
# By providing num2=1, we are providing default value
def multiply_with_default(num1, num2=1):
    return num1 * num2


print(multiply_with_default(9, 4))  # This will print 36
# We can also pass single argument, in this case it function will use
# default value of second argument
print(multiply_with_default(8))  # This will print 8
