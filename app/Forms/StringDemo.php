<?php

$str = 'ssc_roll';

$res = explode('_', $str);
$myString = implode(' ', $res);
echo ucwords($myString);
