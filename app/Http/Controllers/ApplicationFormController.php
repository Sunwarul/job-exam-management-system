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
            'url' => route('application.store'),
            'files' => true
        ]);

        return view('application-form', compact('form'));
    }

    public function store(FormBuilder $formBuilder, Request $request)
    {
        $request->file('signature')->store('signatures');
        $request->file('photo')->store('photos');

        $form = $formBuilder->create(\App\Forms\ApplicationForm::class);
        $form->redirectIfNotValid();

        Application::create($form->getFieldValues());

        return redirect()->back()->with('success', 'Successfully Applied!');
    }
}
