<?php

namespace App\Filament\Resources\PengarangResource\Pages;

use App\Filament\Resources\PengarangResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPengarang extends EditRecord
{
    protected static string $resource = PengarangResource::class;

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
