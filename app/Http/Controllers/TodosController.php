<?php

namespace App\Http\Controllers;

use App\Todo;
use App\Station;
use App\AllAsset;
use App\Vehicle;
use Illuminate\Http\Request;
use App\Http\Requests\StoreTodosRequest;
use App\Http\Requests\UpdateTodosRequest;

class TodosController extends Controller
{

    /**
     * Display a listing of Todo.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $todos = Todo::all();

        return view('todos.index', compact('todos'));
    }

    /**
     * Show the form for creating new Todo.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('todos.create');
    }

    /**
     * Store a newly created Todo in storage.
     *
     * @param  \App\Http\Requests\StoreTodosRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreTodosRequest $request)
    {
        $stations = Station::count();
        $vehicles = Vehicle::count();
        $total_assets = AllAsset::count();
        $assets_available = AllAsset::join('statuses', 'status_id', '=', 'statuses.id' )
            ->select('all_assets.*')
            ->where('status', '=', 'available')
            ->get();
        $available = count($assets_available);

        $assets_repairs = AllAsset::join('statuses', 'status_id', '=', 'statuses.id' )
            ->select('all_assets.*')
            ->where('status', '=', 'in-repair')
            ->get();

        $vehicles_repairs = Vehicle::join('statuses', 'status_id', '=', 'statuses.id' )
            ->select('vehicles.*')
            ->where('status', '=', 'in-repair')
            ->get();

        $in_repairs = $assets_repairs ->merge($vehicles_repairs);
        $repairs = count($in_repairs);
        Todo::create($request->all());

        $todos = Todo::all();
        return view('home', compact('todos', 'total_assets','vehicles','available','repairs','stations'));
    }


    /**
     * Show the form for editing Todo.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $todo = Todo::findOrFail($id);

        return view('todos.edit', compact('todo'));
    }

    /**
     * Update Todo in storage.
     *
     * @param  \App\Http\Requests\UpdateTodosRequest  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateTodosRequest $request, $id)
    {
        $todo = Todo::findOrFail($id);
        $todo->update($request->all());

        $stations = Station::count();
        $vehicles = Vehicle::count();
        $total_assets = AllAsset::count();
        $assets_available = AllAsset::join('statuses', 'status_id', '=', 'statuses.id' )
            ->select('all_assets.*')
            ->where('status', '=', 'available')
            ->get();
        $available = count($assets_available);

        $assets_repairs = AllAsset::join('statuses', 'status_id', '=', 'statuses.id' )
            ->select('all_assets.*')
            ->where('status', '=', 'in-repair')
            ->get();

        $vehicles_repairs = Vehicle::join('statuses', 'status_id', '=', 'statuses.id' )
            ->select('vehicles.*')
            ->where('status', '=', 'in-repair')
            ->get();

        $in_repairs = $assets_repairs ->merge($vehicles_repairs);
        $repairs = count($in_repairs);

        $todos = Todo::all();

        return view('home', compact('todos' ,'total_assets','vehicles','available','repairs','stations'));
    }


    /**
     * Display Todo.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $todo = Todo::findOrFail($id);

        return view('todos.show', compact('todo'));
    }


    /**
     * Remove Todo from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $todo = Todo::findOrFail($id);
        $todo->forceDelete();
        $stations = Station::count();
        $vehicles = Vehicle::count();
        $total_assets = AllAsset::count();
        $assets_available = AllAsset::join('statuses', 'status_id', '=', 'statuses.id' )
            ->select('all_assets.*')
            ->where('status', '=', 'available')
            ->get();
        $available = count($assets_available);

        $assets_repairs = AllAsset::join('statuses', 'status_id', '=', 'statuses.id' )
            ->select('all_assets.*')
            ->where('status', '=', 'in-repair')
            ->get();

        $vehicles_repairs = Vehicle::join('statuses', 'status_id', '=', 'statuses.id' )
            ->select('vehicles.*')
            ->where('status', '=', 'in-repair')
            ->get();

        $in_repairs = $assets_repairs ->merge($vehicles_repairs);
        $repairs = count($in_repairs);
        $todos = Todo::all();

        return view('home', compact('todos','total_assets','vehicles','available','repairs','stations'));
    }

}
