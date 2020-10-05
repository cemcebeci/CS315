<?php
    $array = array(1,2,3,4,5);     //Initialization allowed.
    echo $array[1] + "\n";      //Integer subscript.
    $array1 = array(1);
    $assoc = array("Cem"=>"21703377", "Can"=> 21703376);    //Associative arrays allowed.
    echo $assoc["Cem"] + "\n";                              //A string index;

    echo $array[5] + "\n";
    echo $array[-1] + "\n";     //Boundary checks exist. No errors.

    $array[5] = "6";            //Dynamic sized arrays.
    echo $array[5];
    echo "\n";

    $ragged = array();
    $ragged[0] = array(1,2);
    $ragged[1] = array(3,4,5);
    foreach($ragged[0] as $val){
        echo $val;
    } echo "\n";

    foreach($ragged[1] as $val){
        echo $val;
    } echo "\n";                //ragged arrays     allowed.


    $max = array(1);
    for($i = 0; $i < 1000; $i++){
        $max = array($max);
    }                           //No limit on number of subscripts.

    print_r( array_slice($array, 2,3));

    $a = array(1,2,3);
    $b = array(3,4,5,6);
    $c = $a + $b;
    print_r( $c);               //union operator.
?>
