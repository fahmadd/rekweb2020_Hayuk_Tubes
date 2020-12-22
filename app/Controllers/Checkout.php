<?php

namespace App\Controllers;

use App\Models\CartModel;
use CodeIgniter\Validation\Rules;

class Checkout extends BaseController
{
    protected $cartModel;
    protected $barangModel;
    public function __construct()
    {
        $this->cartModel = new CartModel();
    }
    public function index()
    {
        $data = [
            'judul' => 'Daftar Belanja',
            'barang' => $this->cartModel->getBarang()
        ];

        return view('pages/checkout', $data);
    }
    //--------------------------------------------------------------------
}
