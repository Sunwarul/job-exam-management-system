<?php

namespace App\Forms;

use Kris\LaravelFormBuilder\Form;

class SongForm extends Form
{
    public function buildForm()
    {
        $this
            ->add('photo', 'file')
            ->add('lyrics', 'textarea')
            ->add('publish', 'submit');
    }
}
