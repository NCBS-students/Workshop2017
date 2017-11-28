# File Input and Output For this tutorial, create simple "text.txt" file in
# the same folder and add some content to that file


# Open file in default mode and read its content
with open("test.txt") as file:
    print(file.read())

# Open file in read mode and read it's content
with open("test.txt", "r") as file:
    print(file.read())

# Open file in read mode and read it's content line by line
# Following code will add extra line space while printing because python will
# read '\n' at the end of file and give extra blank line
with open("test.txt", "r") as file:
    for line in file:
        print(line)

# Open file in write mode and write content to file
# This will completely erase your file content and write new content
with open("test.txt", "w") as f:
    print("my content", file=f)

# Open file in append mode and append content to file
# This will add new content at the bottom of your file
with open("test.txt", "a") as f:
    print("new appended content", file=f)
