<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Kris\LaravelFormBuilder\FormBuilder;

class SongsController extends Controller
{
    public function create(FormBuilder $formBuilder)
    {
        $form = $formBuilder->create(\App\Forms\SongForm::class, [
            'method' => 'POST',
            'url' => route('song.store')
        ]);
        $form->redirectIfNotValid();

        return view('song.create', compact('form'));
    }

    public function store(Request $request)
    {
        return $request;
    }
}
