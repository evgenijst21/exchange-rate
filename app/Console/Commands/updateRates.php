<?php

namespace App\Console\Commands;
use App\Models\Data;

use Illuminate\Console\Command;

class updateRates extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'updateRates';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'update data on exchange rates';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $linked = 'http://www.cbr.ru/scripts/XML_daily.asp';
        $data = simplexml_load_file($linked);
        $count = count($data->Valute);
        for ($i = 0; $i < $count; $i++) {
            Data::where('currency_id', $data->Valute[$i]['ID'])->update(
                [
                    'currency_id' => $data->Valute[$i]['ID'],
                    'name' => $data->Valute[$i]->Name,
                    'char_code' => $data->Valute[$i]->CharCode,
                    'num_code' => $data->Valute[$i]->NumCode,
                    'value' => $data->Valute[$i]->Value
                ]
            );
        }
    }
}
