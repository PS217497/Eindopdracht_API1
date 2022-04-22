<?php

namespace Tests\Feature;

use App\Models\Driver;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class ExampleTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */

    public function test_GetDriver1()
    {
        $response = $this->get('/api/drivers/1');
        $response->assertStatus(200);
        $response-> assertJson(['Name' =>'Alexander Albon','Code' =>'ALB','Number' =>'23','Nationality' =>'Thai']);
    }
    public function test_GetDrivers()
    {
        $response = $this->get('/api/drivers');
        $response->assertStatus(200);
    }
    public function test_GetConstructor1()
    {
        $response = $this->get('/api/constructors/1');
        $response->assertStatus(200);
        $response-> assertJson(['Name' =>'Red Bull','Nationality' =>'Austrian']);
    }
    public function test_GetDriversByConstructorId()
    {
        $response = $this->get('/api/constructors/1/drivers');
        $response->assertStatus(200);
    }
    public function test_InsertDriver()
    {
        $data = ['constructor_id'=>'1','Name'=>'Max Verstappen','Code'=>'VER','Number'=>'33','Nationality'=>'Dutch','Url'=>'http://en.wikipedia.org/wiki/Max_Verstappen'];
        $response = $this->json('POST','api/drivers',$data);
        $this->assertDatabaseHas('drivers',['constructor_id'=>'1','Name'=>'Max Verstappen','Code'=>'VER','Number'=>'33','Nationality'=>'Dutch','Url'=>'http://en.wikipedia.org/wiki/Max_Verstappen']);
        $response->assertStatus(201);
    }
    public function test_DeleteCreatedDriver()
    {
        $driver = Driver::create(array('constructor_id'=>'1','Name'=>'Max Verstappen','Code'=>'VER','Number'=>'33','Nationality'=>'Dutch','Url'=>'http://en.wikipedia.org/wiki/Max_Verstappen'));
        $response = $this->delete('api/drivers/'.$driver->id);
        $response->assertStatus(200);
    }
}
