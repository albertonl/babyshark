<?php
$family = [
    "Baby", 
    "Mommy", 
    "Daddy", 
    "Grandma", 
    "Grandpa", 
    "Let's go hunt", 
    "Run away", 
    "Safe at last", 
    "It's the end"
];
$j = 0;
foreach($family as $item){
    $suffix = " shark";
    if($j>4){
        $suffix = "";
    }
    for($i = 0; $i<3; $i++){
        echo $item."".$suffix.", doo doo doo doo doo doo\n";
    }
    echo $item."".$suffix."!\n";
    $j++;
}