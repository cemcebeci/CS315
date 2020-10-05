fn main() {

    for i in 0..3 {
        println!("{}", i);
    }                               //standard integer counter

    let collection = [1, 2, 3, 4];
    for element in &collection {
        println!("{}", element);
    }                               //loop variable iterates through collection, collection can contain elements of any type.

    //println!("{}",i);               //error, i not in scope

    //for i in 0..5 {
    //    i = i +1;                   // i immutable
    //    println!("{}",i);
    //}                             //can't change loop variable inside the loop

    let mut terminal = 5;
    for i in 0..terminal {
        println!("{}",i);
        terminal = 6;
    }                               //iterates 5 times, param not evaluated again.

}