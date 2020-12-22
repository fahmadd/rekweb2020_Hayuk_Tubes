<?php

namespace App\Models;

use CodeIgniter\Model;

class CartModel extends Model
{
    protected $barangModel;
    protected $table = 'cart_product';
    protected $useTimestamps = true;
    protected $allowedFields = ['kode', 'nama', 'kategori', 'harga', 'gambar',];

    public function getBarang($kode = false)
    {
        if ($kode == false) {
            return $this->findAll();
        }
        return $this->where(['kode' => $kode])->first();
    }

    public function getBarangByKategori($kategori)
    {
        return $this->where(['kategori' => $kategori])->findAll();
    }
}
