<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Application;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Kris\LaravelFormBuilder\FormBuilder;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use App\Http\Controllers\Auth\RegisterController;

class ApplicationFormController extends Controller
{
    /**
     *  Prevent user from re-applying for job.
     *  Redirect the user to '/home' if tried so.
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     *  Show job application form
     *
     * @param FormBuilder $formBuilder
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function create(FormBuilder $formBuilder)
    {
        $form = $formBuilder->create(\App\Forms\ApplicationForm::class, [
            'method' => 'POST',
            'url' => route('application.store'),
            'files' => true
        ]);

        return view('application-form', compact('form'));
    }


    /**
     * Store form data, Create a user, Redirect to route('login')
     *
     * @param FormBuilder $formBuilder
     * @param Request $request
     * @return void
     */
    public function store(FormBuilder $formBuilder, Request $request)
    {
        $form = $formBuilder->create(\App\Forms\ApplicationForm::class);
        $form->redirectIfNotValid();

        $request->file('signature')->store('signatures');
        $request->file('photo')->store('photos');

        Application::create($form->getFieldValues());

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        Auth::login($user);
        return redirect()->route("home")->with('success', 'Successfully Applied');
    }
}
