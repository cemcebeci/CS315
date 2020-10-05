fn main() {
    let array = [1,2,3,4,5];    //Initialization allowed.
    println!("{:?}",array);
    println!("{}",array[1]);            //Integer subscript
    //println!("{}",array[0.5]);        //Error. Subscipt needs to be int.
    //println!("{}",array[5]);          //Compile error. 5 not in range.
    //println!("{}",array[-1]);         //Compile error. Negative numbers not allowed.
    //let index = 5;
    //println!("{}",array[index]);      //Runtime error.
    
    let mut twod = [[0;5];5];
    twod[1][3] = 3;
    println!("{:?}", twod[1][3]);       //A multidimensional array


    //test on limit on number of subscripts.
    let nd = [[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[1]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]];
    println!("{}",nd[0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0]);

    let slice = &array[1..3];
    println!("{:?}",slice);             //slices supported

    //let a1 = [1,2];
    //let a2 = [3,4];
    //let concat = a1 + a2;
    //println!("{:?}",slice);             //concat operator not supported

    let a = ["a","b"];
    let b = ["a","b"];
    println!("{}",a==b);                  //element wise comparison.
}