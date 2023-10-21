#python code snippet to reverse a file
#python xxx.py
#Added basic argument functionality

import sys

input_file = sys.argv[1]
output_file = sys.argv[2]

with open(input_file, 'rb') as fp_in: 
    reversed_data = fp_in.read()[::-1] 
    with open(output_file, 'wb') as fp_out: 
        fp_out.write(reversed_data)
