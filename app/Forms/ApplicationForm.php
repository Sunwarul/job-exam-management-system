<?php

namespace App\Forms;

use Illuminate\Support\Str;
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
                    $myArr["{$choiceKey}"] =
                        ucwords(implode(' ', explode('_', $choiceValue)));
                }
            }
            $placeholderText = implode(' ', explode('_', $value->name));
            $this->add($value->name, $value->type ?? 'text', [
                'choices' => $myArr,
                'selected' => $value->selected ?? null,
                'attr' => [
                    'class' => $value->class ?? 'form-control',
                    'id' => $value->id ?? $value->name,
                    'placeholder' => $value->placeholder ??
                        (!isset($value->choices) ? "Enter {$placeholderText}" : null),
                    "rows" => "2",
                ],
                'rules' => $value->rules ?? [],
                "label" => $value->label ?? '',
                "wrapper" => [
                    'class' => 'form-group'
                ]
            ]);
        }
    }
}
