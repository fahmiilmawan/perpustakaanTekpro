<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pinjam extends Model
{
    use HasFactory;
    protected $table = 'pinjam';

    protected $fillable = [
        'buku_id','user_id','tanggal_pinjam','tanggal_pengembalian','status_pengembalian','deskripsi'
    ];

    public function Buku(){
        return $this->belongsTo(Buku::class);
    }
    public function User(){
        return $this->belongsTo(User::class);
    }
}

