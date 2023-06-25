<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Buku extends Model
{
    use HasFactory;
    protected $table = 'buku';

    protected $fillable = [
        'pengarang_id','penerbit_id','rak_id','judul','tahun_terbit','stok'
    ];

    public function Pengarang(){
        return $this->belongsTo(Pengarang::class);
    }
    public function Penerbit(){
        return $this->belongsTo(Penerbit::class);
    }
    public function Rak(){
        return $this->belongsTo(Penerbit::class);
    }
}
