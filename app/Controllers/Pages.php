<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        $data = [
            'judul' => 'Home | WebProgrammingUNPAS'
        ];
        return view('pages/home', $data);
    }

    public function sepatu()
    {
        $data = [
            'judul' => 'Sepatu'
        ];
        return view('pages/sepatu', $data);
    }

    public function sendal()
    {
        $data = [
            'judul' => 'Sendal',
        ];
        return view('pages/sendal', $data);
    }

    public function pakaian()
    {
        $data = [
            'judul' => 'Pakaian',
        ];
        return view('pages/pakaian', $data);
    }
    public function hubungi()
    {
        $data = [
            'judul' => 'Hubungi',
        ];
        return view('pages/hubungi', $data);
    }
    public function kunjungi()
    {
        $data = [
            'judul' => 'Kunjungi',
        ];
        return view('pages/kunjungi', $data);
    }
    //--------------------------------------------------------------------

}
