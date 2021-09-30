<?php

namespace App\Http\Controllers;
use App\Models\Data;

use Laravel\Lumen\Routing\Controller as BaseController;

class RateController extends BaseController
{
    public function show() {
        $rates = Data::all();
        if(view()->exists('show')) {
            return view('show', ['rates' => $rates]);
        }
        abort(404);
    }

    public function currencies()
    {
        
        $rates = Data::all();
        fopen('json/data.json', 'w');
        $file = file_get_contents('json/data.json');
        $taskList = json_decode($file,TRUE);
        unset($file);
        $taskList[] = array('name'=>$rates);
        file_put_contents('json/data.json',json_encode($taskList, JSON_UNESCAPED_UNICODE));
        unset($taskList);
        
        return redirect('json/data.json');
        
        
    }

    public function currenciesId($id)
    {
        $rates = Data::find($id);
        $fileName = 'json/' . $rates->english_name . '.json';
        fopen($fileName, 'w');
        $file = file_get_contents($fileName);
        $taskList = json_decode($file,TRUE);
        unset($file);
        $taskList[] = array('name'=>$rates);
        file_put_contents($fileName,json_encode($taskList, JSON_UNESCAPED_UNICODE));
        unset($taskList);

        return redirect($fileName);
    }
}
