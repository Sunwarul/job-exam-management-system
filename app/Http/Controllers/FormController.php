<?php

namespace App\Http\Controllers;

use App\Models\Form;
use App\Forms\JobForm;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Kris\LaravelFormBuilder\FormBuilder;

class FormController extends Controller
{

    /**
     * Admin middleware
     */
    public function __construct()
    {
        $this->middleware('admin');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $forms = Form::all();
        return view('admin.forms.index', compact('forms'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(FormBuilder $formBuilder)
    {
        $form = $formBuilder->create(\App\Forms\JobForm::class, [
            'method' => 'POST',
            'url' => route('forms.store')
        ]);

        return view('admin.forms.create', compact('form'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (isset($request['exam_circular_file'])) {

            $request->validate([
                'exam_circular_file' => 'image|mimes:jpeg,png,jpg,gif,svg|max:1024',
            ]);

            $request['exam_circular'] = $request->file('exam_circular_file')->store('jobs', 'public');
        }
        Form::create($request->except(['exam_circular_file']));
        return redirect()->route('forms.index')->with('success', 'Exam created!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Form  $form
     * @return \Illuminate\Http\Response
     */
    public function show(Form $form)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Form  $form
     * @return \Illuminate\Http\Response
     */

    public function edit($id, FormBuilder $formBuilder)
    {
        $jobForm = \App\Models\Form::findOrFail($id);
        $form = $formBuilder->create(JobForm::class, [
            'url' => route('forms.update', $jobForm->id),
            'method' => 'PUT',
            'model' => $jobForm,
            // Pass optional data into JobForm::class from here
            'data' => ['selected' => $jobForm['exam_activity_status'],],
        ]);
        return view('admin.forms.edit', compact('form'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Form  $form
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $jobForm = \App\Models\Form::findOrFail($id);

        // If circular file not selected to update, skip. Enter this block otherwise.
        if (isset($request['exam_circular_file'])) {
            // Delete old circular file
            Storage::disk('public')->delete($jobForm['exam_circular']);

            // Validate newly upload file
            $request->validate([
                'exam_circular_file' => 'mimes:jpeg,png,jpg,gif,svg,pdf',
            ]);

            // Upload file, and put the $path into $request['exam_circular'] variable
            $request['exam_circular'] = $request->file('exam_circular_file')->store('jobs', 'public');
        }

        // Update every data, without exam_circular_file one.
        $jobForm->update($request->except(['exam_circular_file']));
        return redirect()->route("forms.index")->with("success", "Updated successfully!");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Form  $form
     * @return \Illuminate\Http\Response
     */
    public function destroy(Form $form)
    {
        //
    }
}
