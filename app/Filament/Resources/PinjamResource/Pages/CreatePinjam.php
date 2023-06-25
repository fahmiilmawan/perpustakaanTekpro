<?php

namespace App\Filament\Resources\PinjamResource\Pages;

use App\Filament\Resources\PinjamResource;
use App\Models\Pinjam;
use Carbon\Carbon;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Pages\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Tables\Columns\TextColumn;

class CreatePinjam extends CreateRecord
{
    protected static string $resource = PinjamResource::class;
}
