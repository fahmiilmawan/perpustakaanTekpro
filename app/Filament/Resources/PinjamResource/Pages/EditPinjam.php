<?php

namespace App\Filament\Resources\PinjamResource\Pages;

use App\Filament\Resources\PinjamResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPinjam extends EditRecord
{
    protected static string $resource = PinjamResource::class;

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
