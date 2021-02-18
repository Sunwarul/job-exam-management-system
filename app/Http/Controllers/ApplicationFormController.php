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
use App\Models\Payment;

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
            'url' => route('application_form.store'),
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
        // Construct the form
        $form = $formBuilder->create(\App\Forms\ApplicationForm::class);
        $form->redirectIfNotValid();

        // If photo and signature set, then upload them to storage or skip
        if (isset($request['photo']) && isset($request['signature'])) {
            $request->file('signature')->store('signatures');
            $request->file('photo')->store('photos');
        }

        // Application model instance save to db
        $form_data = $form->getFieldValues();
        $application = Application::create($form_data);

        // Create a user from the application form and redirect to dashboard
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        Auth::login($user);

        // Create a Payment model instance and save to database

        $payment = Payment::create([
            'user_id' => $user->id,
            'application_id' => $application->id,
            'payment_method' => $request->payment_method,
            'payment_account_number' => $request->payment_account_number,
            'payment_amount' => $request->payment_amount,
            'transaction_number' => $request->transaction_number
        ]);

        return redirect()->route("home")->with('success', 'Successfully Applied');
    }
}
