<?php

namespace App\Filament\Resources\PinjamResource\Pages;

use App\Filament\Resources\PinjamResource;
use App\Models\Pinjam;
use App\Models\User;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;
use Illuminate\Database\Query\Builder;
use Illuminate\Support\Facades\DB;

class ListPinjams extends ListRecords
{
    protected static string $resource = PinjamResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
    protected function getTableQuery(): \Illuminate\Database\Eloquent\Builder
    {

        if(auth()->user()->is_admin){
            return Pinjam::query();
        }else{
            return Pinjam::where('user_id',auth()->user()->id);
        }
    }
}
