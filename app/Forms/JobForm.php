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
                'choices' =>  ['taken' => 'Exam Taken', 'not_taken' => 'Not taken yet'],
                'selected' => 'not_taken'
            ])
            ->add('Create Exam', 'submit', [
                'attr' => ['class' => 'btn btn-primary']
            ])
            ->add('All Exams', 'button', [
                'attr' => [
                    'class' => 'btn btn-primary',
                    // 'onclick' => "window.location.href='admin/forms'"
                ],
                'href' => 'admin/forms'
            ]);
    }
}
