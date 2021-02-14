<?php

namespace App\Forms;

use Kris\LaravelFormBuilder\Form;

class JobForm extends Form
{
    public function buildForm()
    {
        $this
            ->add('exam_name', 'text', [
                'attr' => [
                    'placeholder' => 'Exam name'
                ],
                'rules' => 'required'
            ])
            ->add('exam_description', 'textarea', [
                'attr' => [
                    'rows' => 3,
                    'placeholder' => 'Exam description'
                ],
            ])
            ->add('exam_circular_file', 'file', [
                'attr' => [
                    'class' => 'form-control-file',
                ],
            ])
            ->add('exam_date', 'date')
            ->add('exam_activity_status', 'select', [
                'choices' =>  ['not_taken' => 'Not taken yet', 'taken' => 'Exam Taken',],
                'selected' => $this->getData('selected') ?? 'not_taken',
                'rules' => 'required'
            ])
            ->add('Create Exam', 'submit', [
                'attr' => ['class' => 'btn btn-primary']
            ]);
    }
}
