<?php

namespace App\Controllers;

use App\Models\BarangTrendingModel;
use App\Models\BarangModel;

class Pages extends BaseController
{
    protected $barangTrendingModel;
    protected $barangModel;

    public function __construct()
    {
        $this->barangTrendingModel = new BarangTrendingModel();
        $this->barangModel = new BarangModel();
    }

    public function index()
    {
        $data = [
            'judul' => 'Home | Hayuk Fashion',
            'barangTrending' => $this->barangTrendingModel->getBarang()
        ];

        return view('pages/home', $data);
    }

    public function detail($kode, $kategori)
    {

        $data = [
            'judul' => 'Detail Barang',
            'barang' => $this->barangModel->getBarang($kode),
            'barangByKategori' => $this->barangModel->getBarangByKategori($kategori)
        ];

        if (empty($data['barang'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Kode Produk ' . $kode . $kategori . ' tidak ditemukan');
        }
        return view('pages/detail', $data);
    }

    public function byKategori($kategori)
    {

        $data = [
            'judul' => 'Home | Hayuk Fashion',
            'barang' => $this->barangModel->getBarangByKategori($kategori)
        ];

        return view('pages/clothes', $data);
    }

    // public function shoes($kategori)
    // {

    //     $data = [
    //         'judul' => 'Home | WebProgrammingUNPAS',
    //         'barang' => $this->barangModel->getBarangByKategori($kategori)
    //     ];

    //     return view('pages/shoes', $data);
    // }

    // public function bag($kategori)
    // {

    //     $data = [
    //         'judul' => 'Home | WebProgrammingUNPAS',
    //         'barang' => $this->barangModel->getBarangByKategori($kategori)
    //     ];

    //     return view('pages/bag', $data);
    // }

    // public function cap($kategori)
    // {

    //     $data = [
    //         'judul' => 'Home | WebProgrammingUNPAS',
    //         'barang' => $this->barangModel->getBarangByKategori($kategori)
    //     ];

    //     return view('pages/cap', $data);
    // }

    // public function kids($kategori)
    // {

    //     $data = [
    //         'judul' => 'Home | WebProgrammingUNPAS',
    //         'barang' => $this->barangModel->getBarangByKategori($kategori)
    //     ];

    //     return view('pages/kids', $data);
    // }

    public function all()
    {

        $data = [
            'judul' => 'Home | WebProgrammingUNPAS',
            'barang' => $this->barangModel->getBarang()
        ];

        return view('pages/all', $data);
    }

    //--------------------------------------------------------------------

}
