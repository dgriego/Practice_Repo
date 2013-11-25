<?php

// Let's create a test array filled with data.
$items = array();
$items[0] = array(1003, 'bob', 'sss');
$items[1] = array(1005, 'foo', 'zzz');
$items[2] = array(1000, 'bar', 'ggg');

echo "====== UNSORTED ======\n";
var_dump($items);

echo "\n====== SORTED ======\n";
$index_to_sort_by = 2;  // sort the array on the third element
                        // (remember indexing starts at zero).
$sorted_items = msort($items, $index_to_sort_by);
var_dump($sorted_items);

exit();



function msort($array, $id) {
    $temp_array = array();
    while(count($array) > 0) {
        $lowest_id = 0;
        $index = 0;
        foreach($array as $item) {
            if(isset($item[$id]) && $array[$lowest_id][$id]) {
                if($item[$id] < $array[$lowest_id][$id]) {
                    $lowest_id = $index;
                }
            }
            $index++;
        }
        $temp_array[] = $array[$lowest_id];
        $array = array_merge(array_slice($array, 0, $lowest_id), array_slice($array, $lowest_id +1));
    }
    return $temp_array;
}

?>