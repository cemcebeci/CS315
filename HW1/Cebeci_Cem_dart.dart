int main() {
  var list = [1,2,3, "a", 5]; //heterogenous lists allowed.
  
  print( list[2]);            //integer subscripts allowed.
  
  int index = 1;
  print( list[ index + 3]);   //expressions evaluating to integers allowed.
  
  //print( list["a"]);        //error, only int subscripts

  //print( list[5]);          //error, subscript must be less then size.
  //print( list[-1]);         //error, negative subscripts not allowed.

  list.add(6);
  print( list[5]);            //dynamic list lengths allowed.

  var twod_list = [ [1,2], [3,4]];
  twod_list.add( [5,6,7]);
  print( twod_list[1]);
  print( twod_list[2]);       //ragged lists allowed.


  List<List> list1 = [[1]];
  List<List> list2 = [list1];
  print(list2[0][0][0]); 

  List<List> l = [[1]];
  for(int i = 0; i < 1000; i++) {
    l = [l];
  }
  print( l);                  //no limit on number of subscripts.


  List to_be_sliced =  ["a","b","c","d","e"];
  List slice = to_be_sliced.sublist(1,3);
  print( slice);              //slices supported in the form of the sublist method.

  List a = [1,2,3];
  print( a + [1,2,3] == [1,2,3,1,2,3]);//The + and == operators are supported

  var associative = {"Cem":"21703377", "Can": "21703376"};
  print(associative["Cem"]);  //Associative arrays supported.
  
}