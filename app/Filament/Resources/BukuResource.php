<?php

namespace App\Filament\Resources;

use AlperenErsoy\FilamentExport\Actions\FilamentExportBulkAction;
use App\Filament\Resources\BukuResource\Pages;
use App\Filament\Resources\BukuResource\RelationManagers;
use App\Models\Buku;
use App\Models\Penerbit;
use App\Models\Pengarang;
use App\Models\Rak;
use Filament\Forms;
use Filament\Pages\Actions\ActionGroup;
use Filament\Resources\Form;
use Filament\Resources\Resource;
use Filament\Resources\Table;
use Filament\Tables;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use pxlrbt\FilamentExcel\Actions\Pages\ExportAction;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;
use pxlrbt\FilamentExcel\Exports\ExcelExport;


class BukuResource extends Resource
{
    protected static ?string $model = Buku::class;

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
                Forms\Components\Select::make('pengarang_id')
                    ->label('Pengarang')
                    ->options(Pengarang::all()->pluck('nama','id'))
                    ->searchable()
                    ->required(),
                Forms\Components\Select::make('penerbit_id')
                    ->label('Penerbit')
                    ->options(Penerbit::all()->pluck('nama','id'))
                    ->searchable()
                    ->required(),
                Forms\Components\TextInput::make('judul')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('tahun_terbit'),
                Forms\Components\TextInput::make('stok')
                    ->required(),
                Forms\Components\Select::make('rak_id')
                    ->label('Rak')
                    ->options(Rak::all()->pluck('nama_rak','id'))
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('judul')
                    ->label('Judul')
                    ->searchable(),
                Tables\Columns\TextColumn::make('Pengarang.nama')
                    ->label('Pengarang')
                    ->searchable(),
                Tables\Columns\TextColumn::make('Penerbit.nama')
                    ->label('Penerbit')
                    ->searchable(),
                Tables\Columns\TextColumn::make('tahun_terbit')
                    ->label('Tahun Terbit')
                    ->searchable(),
                Tables\Columns\TextColumn::make('stok')
                    ->label('Stok')
                    ->searchable(),
                Tables\Columns\TextColumn::make('Rak.lokasi_rak')
                    ->label('Lokasi Rak')
                    ->searchable()
            ])
            ->filters([

            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\EditAction::make(),
                    Tables\Actions\ViewAction::make(),
                ])
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
                FilamentExportBulkAction::make('export')
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
            'index' => Pages\ListBukus::route('/'),
            'create' => Pages\CreateBuku::route('/create'),
            'edit' => Pages\EditBuku::route('/{record}/edit'),
        ];
    }
}
