a = 31

t = type(a)   # Identify which type of a 

print(t)    # Print <class 'int'>


a = "Hadi"
t= type(a)

print(t)   #Print <class 'str'>


a = 32.5           # This is Floating Number 
b = int(a)       # The floating number a convert integer number 
t = type(b)
print(t)



# But can not convert string to integer or float

a = "Hadi"
b = int(a)
t = type(b)
print(t)            # giving an error


# But any integer or floating number convert to string that's valid

a =32
b = str(a)
t =type(b)
print(t)