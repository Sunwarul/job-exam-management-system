<?php

namespace App\Forms;

use Kris\LaravelFormBuilder\Form;

class ApplicationForm extends Form
{
    public function buildForm()
    {
        $json_file = file_get_contents(__DIR__ . '/job-form.json');
        $formData = json_decode($json_file);

        foreach ($formData as $key => $value) {

            $myArr = [];
            if (isset($value->choices)) {
                foreach ($value->choices as
                    $choiceKey => $choiceValue) {
                    $myArr["{$choiceKey}"] = $choiceValue;
                }
            }

            $this->add($value->name, $value->type, [
                'choices' => $myArr,
                'selected' => $value->selected ?? '',
                'attr' => [
                    'class' => $value->class ?? '',
                    'id' => $value->id ?? $value->name,
                    'placeholder' => $value->placeholder ?? null,
                ],
                'rules' => $value->rules ?? [],
                "label" => $value->label ?? '',
            ]);
        }
    }
}
