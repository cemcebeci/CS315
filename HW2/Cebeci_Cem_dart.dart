int main() {

  for( int i = 0; i < 3; i++){
    print(i);
  }                             //standard integer counter

  
  List<Object> objlist = [57,"a", true];
  for( Object o in objlist) {
    print(o);
  }                             //the loop control variable can be of any type since Object is a superclass for all types.

  //print(i);                   //Error, the loop variable's scope is the loop's body.

  int j = 10;
  for(  ; j < 12; j++){
    print(j);
  }                             //j could be considered a loop controlled variable, its scope is the scope of the loop.

  for(int i = 0; i < 10; i++){
    i += 5;
    print(i);
  }                             //prints 5 and 11, the loop control variable can be changed and it affetcs execution.

  int initial_value = 0;
  int final_value = 15;
  int step_size = 1;
  for (int counter = initial_value; counter <= final_value; counter += step_size){
    print(counter);
    step_size++;
  }                         // prints 1,2,5. the parameter array is evaluated in each iteration.
}