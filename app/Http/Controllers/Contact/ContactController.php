<?php

namespace App\Http\Controllers\Contact;

use App\Models\Contact;
use App\Models\ContactForm;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ContactController extends Controller
{
    //
    public function index()
    {
        $contacts = Contact::first();
        // return response()->json($contacts);
        return view('pages.contact', compact('contacts'));
    }


    public function send(Request $request)
    {

        // return response()->json($request->all());
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'primaryPhone' => 'required|string|max:15',
            'email' => 'required|email',
            'message' => 'required|string',
        ]);

        ContactForm::create([
            'name' => $request->input('name'),
            'primaryPhone' => $request->input('primaryPhone'),
            'email' => $request->input('email'),
            'message' => $request->input('message'),
        ]);

        return redirect()->back()->with('success', 'تم إرسال رسالتك بنجاح.');
    }
}
