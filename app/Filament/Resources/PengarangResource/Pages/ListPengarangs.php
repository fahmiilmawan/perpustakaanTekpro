<?php

namespace App\Filament\Resources\PengarangResource\Pages;

use App\Filament\Resources\PengarangResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPengarangs extends ListRecords
{
    protected static string $resource = PengarangResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
