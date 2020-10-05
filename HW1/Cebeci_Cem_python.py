array = [1,2,3,4,5]     #Initialization allowed.
print(array[1])         #Integer subscript.

assoc = {"Cem" : 21703377, "Can" : 21703376}    #Associative arrays.
print(assoc["Can"])                            #String subscript.

#print(array[5])        #Throws an error, boundary checks exist.
print(array[-2])        #Prints 5, the last element.

array.append(6)         #Dynamic array lenghts.
print(array[5])

ragged = [[1,2],[3,4,5]]
print(ragged[0])
print(ragged[1])        #Ragged arrays are allowed.

max = [1]
for i in range (1000) :
    max = [max]

print (max)             #Any number of subscripts allowed.

to_be_sliced = range(30)
slice = to_be_sliced[0:30:6]
print(slice)            #Slice operator

a = [i in range(10000)]
b = [i in range(10000)]
print(a == b)
