# Following code finds maximum number from given list. Whatever is written
# after "#" is called comment and will NOT be executed by compiler. We will
# use these comments to explain our logic behind every step


# Create your list. List is created by using square bracket
# and separating elements by comma.
my_list = [3, 45, 10, 29]

# Create temporary variable called max_number and assign first element of your
# list. IMPORTANT: python list index starts from 0. For example, in above list
# 3 is zeroth element, 45 is first element and so on. This is another way of
# saying 3 is at 0th index, 45 is at 1st index. You can access any element by
# index when we used square bracket in front of list.

max_number = my_list[0]  # 0 is to get 0th element from the my_list

# Now we iterate over entire list and compare each element with above number

for element in my_list:

    # If element is greater than our current max_number, update it
    if element > max_number:
        max_number = element

# Print the maximum number
print("Maximum number from given list is " + str(max_number))
# We used str(max_number) to convert number into string.

for i in range(2, 6):
    print(i)
