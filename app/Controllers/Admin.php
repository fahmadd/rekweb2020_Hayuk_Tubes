<?php

namespace App\Controllers;

use CodeIgniter\Validation\Rules;
use App\Models\BarangModel;

class Admin extends BaseController
{
    protected $db, $builder;
    protected $barangModel;

    public function __construct()
    {
        $this->db         = \config\Database::connect();
        $this->builder    = $this->db->table('users');
        $this->barangModel = new BarangModel();
    }

    public function index()
    {
        $data['title'] = 'User List';
        // $users = new \Myth\Auth\Models\UserModel();
        // $data['users'] = $users->findAll();
        $this->builder->select('users.id as userid, username, email,name');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        $query = $this->builder->get();

        $data['users'] = $query->getResult();

        return view('admin/index', $data);
    }

    public function detail($id = 0)
    {
        $data['title'] = 'User Detail';

        $this->builder->select('users.id as userid, username, email, fullname, user_image, name');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        $this->builder->where('users.id', $id);
        $query = $this->builder->get();

        $data['user'] = $query->getRow();

        if (empty($data['user'])) {
            return redirect()->to('/admin');
        }

        return view('admin/detail', $data);
    }

    public function produk()
    {

        $data = [
            'title' => 'Daftar Produk',
            'barang' => $this->barangModel->getBarang()
        ];

        return view('admin/daftarproduk', $data);
    }
}
