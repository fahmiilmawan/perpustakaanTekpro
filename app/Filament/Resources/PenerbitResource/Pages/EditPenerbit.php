<?php

namespace App\Filament\Resources\PenerbitResource\Pages;

use App\Filament\Resources\PenerbitResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPenerbit extends EditRecord
{
    protected static string $resource = PenerbitResource::class;

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
