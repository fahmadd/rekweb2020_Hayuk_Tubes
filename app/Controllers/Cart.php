<?php

namespace App\Controllers;

use App\Models\CartModel;
use App\Models\BarangModel;
use CodeIgniter\Validation\Rules;

class Cart extends BaseController
{
    protected $cartModel;
    protected $barangModel;
    public function __construct()
    {
        $this->cartModel = new CartModel();
        $this->barangModel = new BarangModel();
    }
    public function index()
    {
        $data = [
            'judul' => 'Daftar Belanja',
            'barang' => $this->cartModel->getBarang()
        ];

        return view('pages/cart', $data);
    }

    public function update($kode)
    {
        $hasil = $this->barangModel->getBarang($kode);
        $this->cartModel->save([
            'kode' => $hasil['kode'],
            'nama' => $hasil['nama'],
            'kategori' => $hasil['kategori'],
            'harga' => $hasil['harga'],
            'gambar' => $hasil['gambar'],
        ]);
        return redirect()->to('/pages/cart');
    }

    public function delete($id)
    {
        $this->cartModel->delete($id);
        return redirect()->to('/pages/cart');
    }
    //--------------------------------------------------------------------
}
