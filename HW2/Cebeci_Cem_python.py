for i in range(3):
    print(i)                #standard integer counter.

class Arbitrary:
    attr = 20

objList = [Arbitrary(), Arbitrary(), Arbitrary()]
for o in objList:
    print(o.attr)           #the loop control variable can be an arbitrary type, even an object.

print(i)                    #i still in scope.

for j in range (5):
    j += 1
    print(j)                #j is changed inside the loop, does not affect control.

initial_value = 0
final_value = 15
step_size = 1

for i in range(initial_value, final_value, step_size):
    step_size += 1
    print(i)


