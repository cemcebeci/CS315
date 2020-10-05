<?php
    for( $i = 0; $i < 3; $i++) {
        echo($i + "<br>");
    }                           //standard integer counter.

    for( $i = 0.5; $i < 3.5; $i++) {
        echo($i + "<br>");
    }                           //float counter.
    echo($i);                   //$i still in scope.

    for( $j = 0; $j < 10; $j++){
        $j += 5;
        echo($j + "<br>");
    }                            //loop variable can be changed in the loop, affects control.

    $initial_value = 0;
    $final_value = 15;
    $step_size = 1;
    for ( $counter = $initial_value; $counter <= $final_value; $counter += $step_size){
        echo($counter + "<br>");
        $step_size++;
    }                            //step_size is evaluated in each iteration.
?>