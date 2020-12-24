<?php

namespace App\Models;

use CodeIgniter\Model;

class BarangModel extends Model
{
    protected $table = 'product';
    protected $useTimestamps = true;
    protected $allowedFields = ['kode', 'nama', 'kategori', 'deskripsi', 'detail', 'harga', 'gambar', 'gambar2', 'gambar3'];

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
