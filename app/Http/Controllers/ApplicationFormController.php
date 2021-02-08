<?php

namespace App\Http\Controllers;

use App\Models\Application;
use Illuminate\Http\Request;
use Kris\LaravelFormBuilder\FormBuilder;

class ApplicationFormController extends Controller
{
    public function create(FormBuilder $formBuilder)
    {
        $form = $formBuilder->create(\App\Forms\ApplicationForm::class, [
            'method' => 'POST',
            'url' => route('application.store')
        ]);

        return view('application-form', compact('form'));
    }

    public function store(FormBuilder $formBuilder)
    {
        $form = $formBuilder->create(\App\Forms\ApplicationForm::class);
        $form->redirectIfNotValid();

        // if (!$form->isValid()) {
        //     return redirect()->back()->withErrors($form->getErrors())->withInput();
        // }
        Application::create($form->getFieldValues());
        return redirect()->back()->with('success', 'success');
    }
}
