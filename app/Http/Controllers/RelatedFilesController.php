<?php

namespace App\Http\Controllers;

use App\RelatedFile;
use App\Station;
use App\Vehicle;
use Illuminate\Http\Request;
use App\Http\Requests\StoreRelatedFilesRequest;
use App\Http\Requests\UpdateRelatedFilesRequest;
use App\Http\Controllers\Traits\FileUploadTrait;
use Illuminate\Support\Facades\Storage;


class RelatedFilesController extends Controller
{
    use FileUploadTrait;


    /**
     * Display a listing of RelatedFile.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $related_files = RelatedFile::all();

//        $station_images = Station::
//        $contents = Storage::get();
//        dd($related_files);

//        foreach ($related_files as $key=>$value) {
//
////           dd($value);
//        }
//        return redirect()->route('related_files.index');

        return view('related_files.index', compact('related_files'));
    }

    /**
     * Show the form for creating new RelatedFile.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
        return view('related_files.create', compact(''));
    }

    /**
     * Store a newly created RelatedFile in storage.
     *
     * @param  \App\Http\Requests\StoreRelatedFilesRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreRelatedFilesRequest $request)
    {

        $destinationPath = 'uploads';
        $file = $request->file(['related_file']);

        foreach ($file as $key=>$value) {

            $file_attribute = array(
                'related_file'=>$value->getClientOriginalName());
                 $value->move($destinationPath, $value->getClientOriginalName());
                 RelatedFile::create($file_attribute);
        }
            return redirect()->route('related_files.index');

    }



    /**
     * Show the form for editing RelatedFile.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        
        $file = RelatedFile::findOrFail($id);
        return view('related_files.edit', compact('file', ''));
    }

    /**
     * Update RelatedFile in storage.
     *
     * @param  \App\Http\Requests\UpdateRelatedFilesRequest  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateRelatedFilesRequest $request, $id)
    {
        $request = $this->saveFiles($request);
        $file = RelatedFile::findOrFail($id);
        $file->update($request->all());

        return redirect()->route('related_files.index');
    }

    /**
     * Display RelatedFile.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $file = RelatedFile::findOrFail($id);
        return view('related_files.show', compact('file'));
    }


    /**
     * Remove RelatedFile from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $file = RelatedFile::findOrFail($id);
        $file->forceDelete();

        return redirect()->route('related_files.index');
    }

}
