<?php

namespace App\Filament\Resources\RakResource\Pages;

use App\Filament\Resources\RakResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditRak extends EditRecord
{
    protected static string $resource = RakResource::class;

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
