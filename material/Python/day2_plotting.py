# Basic Plotting
# Here we will get data from "iris dataset" and plot it with
# the help of library. If you don't have data, download from following link
# https://github.com/NCBS-students/Workshop2017/raw/master/material/iris-dataset.zip
# Then unzip data and put "iris.data" file in same folder

import matplotlib.pylab as plt  # Import library

# Iris data set if Following format. each line has following 5 elements
# sepal length, sepal width, petal length, petal width, class

# Create empty lists to add elements from each line
sepal_length = []
sepal_width = []
petal_length = []
petal_width = []

with open("iris.data", "r") as f:
    # We will read content line by line
    for line in f:
        # Split line by comma. And make list
        line_elements = line.split(",")
        # Above should make list of 5 objects. If we have any other blank
        # line, we should ignore it.
        if len(line_elements) == 5:
            # All elements will be in String format, hence we need to
            # convert them to float .Zeroth's element is sepal length,
            # First element is sepal width and so on
            sepal_length.append(float(line_elements[0]))
            sepal_width.append(float(line_elements[1]))
            petal_length.append(float(line_elements[2]))
            petal_width.append(float(line_elements[3]))

# Plotting
plt.scatter(sepal_length, petal_length)  # Scatter Plot
plt.xlabel("Sepal Length")
plt.ylabel("Petal Length")
plt.title("Iris data")
plt.savefig("test.png", format="png", dpi=300)
plt.show()
