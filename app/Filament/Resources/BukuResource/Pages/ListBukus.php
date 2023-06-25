<?php

namespace App\Filament\Resources\BukuResource\Pages;

use App\Filament\Resources\BukuResource;
use App\Models\Buku;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;

class ListBukus extends ListRecords
{
    protected static string $resource = BukuResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
    protected function getTableQuery(): \Illuminate\Database\Eloquent\Builder
    {

        if(auth()->user()->is_admin){
            return Buku::query();
        }else{
            return Buku::where('user_id',auth()->user()->id);
        }
    }

}
