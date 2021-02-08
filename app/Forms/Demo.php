<?php

$json = file_get_contents(__DIR__ . '/form.json');

$formData = json_decode($json, true);

foreach ($formData as $key => $value) {
    foreach ($value as $key => $value) {
        if ($key === 'choices') {
            foreach ($value as $key => $value) {
                echo $key . ' => ' . $value . PHP_EOL;
            }
        }
    }
}
