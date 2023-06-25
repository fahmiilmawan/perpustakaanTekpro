<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PengarangResource\Pages;
use App\Filament\Resources\PengarangResource\RelationManagers;
use App\Models\Pengarang;
use Filament\Forms;
use Filament\Resources\Form;
use Filament\Resources\Resource;
use Filament\Resources\Table;
use Filament\Tables;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PengarangResource extends Resource
{
    protected static ?string $model = Pengarang::class;

    protected static ?string $navigationIcon = 'heroicon-o-collection';

    protected static ?string $navigationGroup = 'Data Buku';
    protected static function shouldRegisterNavigation(): bool
    {
        return auth()->user()->is_admin;
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('pengarang')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                ->label('No'),
                Tables\Columns\TextColumn::make('nama')
                    ->label('Nama Pengarang')
                    ->searchable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPengarangs::route('/'),
            'create' => Pages\CreatePengarang::route('/create'),
            'edit' => Pages\EditPengarang::route('/{record}/edit'),
        ];
    }
}
