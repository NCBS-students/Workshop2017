# Following code finds first 100 primes. Whatever
# is written after "#" is called comment and will NOT be executed by
# compiler. We will use these comments to explain our logic behind every step
# This is advance version of "find primes in first 100 positive integer


# Let us understand logic first.
# Prime number is any number who is not divisible by 1 and itself.
# So if we want to find prime number, we need to check if any number lower than
# current number giving reminder as 0

# Mathematically we only need to check till square root of any number. However
# for the simplicity, we will check till n-1 element.


# We will create 1 empty list and will append prime numbers will length of
# this list becomes 100
prime_numbers = []

# We will use while loop here,
# Create initial number. In each iteration, we will increment this number
current_number = 1

while len(prime_numbers) < 101:
    # This loop will run till size of our list becomes 100

    # Temporary variable, which we will change to false if we find any
    # number with reminder 0
    temp_variable = True
    # Second for loop to check reminder
    for i in range(1, current_number):
        if current_number % i == 0 and i != 1:
            # Change temporary variable
            temp_variable = False
            # Given number is not prime. Break the second for loop
            break

    # If temporary variable is not False, owe have found prime number
    # Also we have to exclude 1
    if temp_variable and current_number != 1:
        # This is how we add element to list
        prime_numbers.append(current_number)
        # Print the number
        print(current_number)

    # Inclement the current number.
    current_number = current_number + 1
