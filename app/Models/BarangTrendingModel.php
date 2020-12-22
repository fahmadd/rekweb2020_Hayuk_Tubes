<?php

namespace App\Models;

use CodeIgniter\Model;

class BarangTrendingModel extends Model
{
    protected $table = 'trending_product';
    protected $useTimestamps = true;
    protected $allowedFields = ['kode', 'nama', 'kategori', 'harga', 'gambar', 'gambar2', 'gambar3'];

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
