<?php

namespace App\Controllers;

use App\Models\BarangTrendingModel;
use App\Models\CartModel;
use App\Models\BarangModel;
use CodeIgniter\Validation\Rules;

class Home extends BaseController
{

	protected $barangTrendingModel;
	protected $cartModel;
	protected $barangModel;
	public function __construct()
	{
		$this->barangTrendingModel = new BarangTrendingModel();
		$this->cartModel = new CartModel();
		$this->barangModel = new BarangModel();
	}
	public function index()
	{
		$data = [
			'judul' => 'Home | WebProgrammingUNPAS',
			'barangTrending' => $this->barangTrendingModel->getBarang()
		];

		return view('pages/home', $data);
	}

	public function detail($kode, $kategori)
	{

		$data = [
			'judul' => 'Detail Barang',
			'barang' => $this->barangTrendingModel->getBarang($kode),
			'barangByKategori' => $this->barangTrendingModel->getBarangByKategori($kategori)
		];

		if (empty($data['barang'])) {
			throw new \CodeIgniter\Exceptions\PageNotFoundException('Kode Produk ' . $kode . $kategori . ' tidak ditemukan');
		}
		return view('pages/detail', $data);
	}
	//--------------------------------------------------------------------
}
