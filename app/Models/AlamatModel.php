<?php

namespace App\Models;

use CodeIgniter\Model;

class AlamatModel extends Model
{
    protected $table = 'tb_ro_cities';
    protected $useTimestamps = true;
    protected $allowedFields = ['city_id', 'province_id', 'city_name', 'postal_code'];

    public function getDetail($kodekota = false)
    {
        if ($kodekota == false) {
            return $this->findAll();
        }

        return $this->where(['city_id' => $kodekota])->first();
    }
}
