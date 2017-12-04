# You will need Opencv library to run this program.
# Install it by following command,
# pip install opencv-python

# Remember, you need to do lot of changes to this code if you are using it for
# some different kind of data. However it shows basic usages and how to think about it

import cv2

# open image
m = cv2.imread("test.png")
# Convert to grey scale
imgray = cv2.cvtColor(m, cv2.COLOR_BGR2GRAY)

# Threshold
ret, thresh = cv2.threshold(imgray, 127, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C)

# Find contours
im2, contours, hierarchy = cv2.findContours(thresh, cv2.RETR_TREE,
                                            cv2.CHAIN_APPROX_SIMPLE)
# Draw on the image
cv2.drawContours(m, contours, -1, (0, 255, 0), 3)

contours, h, k = cv2.findContours(thresh, 1, 2)
colonies = 0
area = []

# Find area for all contours
for i in h:
    if cv2.contourArea(i) != 0:
        area.append(cv2.contourArea(i))
# Print number of contours
print(len(area))

# Save as new image with contours drawn
cv2.imwrite("result.png", m)  # Write image to file
