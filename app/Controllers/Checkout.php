<?php

namespace App\Controllers;

use App\Models\CartModel;
use App\Models\AlamatModel;
use CodeIgniter\Validation\Rules;

class Checkout extends BaseController
{
    protected $cartModel;
    protected $barangModel;
    protected $alamatModel;
    public function __construct()
    {
        $this->cartModel = new CartModel();
        $this->alamatModel = new AlamatModel();
    }
    public function index()
    {
        $data = [
            'judul' => 'Daftar Belanja',
            'barang' => $this->cartModel->getBarang(),
            'alamat' => $this->alamatModel->getDetail()
        ];

        return view('pages/checkout', $data);
    }
    //--------------------------------------------------------------------
}
