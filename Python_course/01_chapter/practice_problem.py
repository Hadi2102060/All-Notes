# problem-1: Write s program to print Twinklk twinkle litte Star poem in python?

# Answer:

print("""Twinkle, twinkle, little star,
How I wonder what you are!
Up above the world so high,
Like a diamond in the sky.

When the blazing sun is gone,
When he nothing shines upon,
Then you show your little light,
Twinkle, twinkle, all the night.

Then the trav'ller in the dark,
Thanks you for your tiny spark,
He could not see which way to go,
If you did not twinkle so.

In the dark blue sky you keep,
And often thro' my curtains peep,
For you never shut your eye,
Till the sun is in the sky.

'Tis your bright and tiny spark,
Lights the trav'ller in the dark:
Tho' I know not what you are,
Twinkle, twinkle, little star.""")


# "problem-2":  Use REPL(Read Evaluate Print Loop) and print the table of 5 using it

# Answer:

# open terminal then write python then execute any operation like 5*1  then output 5 .


# "problem-3":  Install an external module and use it to perform an operation of your interest?

# Answer:

#  write the terminal : pip install pyttsx3(external module)

import pyttsx3
engine = pyttsx3.init()

# For Mac, If you face error related to "pyobjc" when running the `init()` method :
# Install 9.0.1 version of pyobjc : "pip install pyobjc>=9.0.1"

engine.say("I am Hadi studies at Patuakhali Science and Technology university")
engine.runAndWait()



# "problem-4":  Write a python program to print the contents of a directory using the os module. Search online for the function which does that?

# Answer:


import os


# Specify the directory you want ot list
directory_path = 'D'

#List all files and directories in the specified path
contents = os.listdir(directory_path)


# Print the contents of the directory
print(contents)

#   "problem-5":  Label the program written in problem 4 with comments?

# Answer:

