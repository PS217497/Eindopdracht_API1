<?php

namespace App\Http\Controllers;

use App\Models\Driver;
use Illuminate\Http\Request;

class DriverController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->has('naam'))
            return Driver::where('naam', 'like', '%'.$request->naam.'%')->get();
        if ($request->has('sort')) return Driver::orderBy($request->sort)->get();
        return Driver::All();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        return Driver::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Driver $drivers)
    {
        return $drivers;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Driver $drivers)
    {
        $drivers->update($request->all());
        return $drivers;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Driver $drivers)
    {
        $drivers->delete();
    }

    public function indexFunctie(Request $request, $id)
    {
        if ($request->has('sort'))
            return Driver::where('constructor_id',$id)->orderBy($request->sort)->get();
        if($request->has(['limit', 'offset']))
            return Driver::where('constructor_id',$id)->skip($request->offset)->take($request->limit)->get();
        return Driver::where('constructor_id',$id)->get();
    }
    public function destroyFunctie($id)
    {
        Driver::where('constructor_id', $id)->delete();
    }
}
