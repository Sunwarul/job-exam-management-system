<?php

namespace App\Forms;

use Kris\LaravelFormBuilder\Form;

class JobForm extends Form
{
    public function buildForm()
    {
        $arr = ['active' => 'Active', 'inactive' => 'Inactive'];

        $this->add('title', 'text')
            ->add('description', 'text')
            ->add('circular', 'file')
            ->add('date', 'date')
            ->add('status', 'select', [
                'choices' =>  $arr,
                'selected' => 'inactive'
            ])
            ->add('Submit', 'submit', []);
    }
}
