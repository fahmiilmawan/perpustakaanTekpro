<?php

namespace App\Filament\Resources\PenerbitResource\Pages;

use App\Filament\Resources\PenerbitResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPenerbits extends ListRecords
{
    protected static string $resource = PenerbitResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
