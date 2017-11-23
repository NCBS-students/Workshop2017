# Following code finds prime number in first 100 positive integer. Whatever
# is written after "#" is called comment and will NOT be executed by
# compiler. We will use these comments to explain our logic behind every step


# Let us understand logic first.
# Prime number is any number who is not divisible by 1 and itself.
# So if we want to find prime number, we need to check if any number lower than
# current number giving reminder as 0

# Mathematically we only need to check till square root of any number. However
# for the simplicity, we will check till n-1 element.

# We will use range to create list of numbers starting from 1 to 100 As
# range will give number excluding last number, we will use 101 as last number


for number in range(1, 101):
    # We will iterate through numbers till we find reminder zero.
    # We will also create one variable to check if we have found prime number

    temp_variable = True
    # Temporary variable, which we will change to false if we find any
    # number with reminder 0

    for i in range(1, number):
        # Every element will be divisible by 1, hence we have to exclude 1
        if number % i == 0 and i != 1:
            # Change value of tem variable
            temp_variable = False
            # Given number is not prime. Break the second for loop
            break

    # Now value of tem_variable will be false if we find any reminder as 0
    # Hence if temp_variable is still True, then we have found prime number
    # Also we need to exclude 1 because 1 is not a prime number

    if temp_variable and number != 1:
        print(str(number) + " is a prime number")
