#!/bin/bash                                                                  
# 
# Create all output results 
#

# Useful shell settings:

# abort the script if a command fails
set -e

# abort the script if an unitialized shell variable is used
set -u

# make sure the code is up to date

pushd src
make
popd

# generate the result pictures

# src/imgpro input/testpattern.jpg output/testpattern_harris_1c.jpg -harris 1;
# src/imgpro input/testpattern.jpg output/testpattern_harris_2c.jpg -harris 2;
# src/imgpro input/testpattern.jpg output/testpattern_harris_3c.jpg -harris 3;
# src/imgpro input/testpattern.jpg output/testpattern_harris_4c.jpg -harris 4;

src/imgpro input/testpattern.jpg output/testpattern_features.jpg -features 150;


# src/imgpro input/IMG_3176.jpg output/IMG_3176_blur.jpg -blur 1;

# src/imgpro input/testpattern.jpg output/testpattern_sharp.jpg -sharpen
