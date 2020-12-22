<?php

namespace App\Controllers;

use App\Models\BarangTrendingModel;

class Pages extends BaseController
{
    protected $barangTrendingModel;

    public function __construct()
    {
        $this->barangTrendingModel = new BarangTrendingModel();
    }

    public function index()
    {
        $data = [
            'judul' => 'Home | WebProgrammingUNPAS',
            'barangTrending' => $this->barangTrendingModel->getBarang()
        ];

        return view('pages/home', $data);
    }



    //--------------------------------------------------------------------

}
