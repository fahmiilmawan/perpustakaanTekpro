<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PinjamResource\Pages;
use App\Filament\Resources\PinjamResource\RelationManagers;
use App\Models\Buku;
use App\Models\Pinjam;
use App\Models\User;
use Filament\Forms;
use Filament\Resources\Form;
use Filament\Resources\Resource;
use Filament\Resources\Table;
use Filament\Tables;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\Auth;

class PinjamResource extends Resource
{
    protected static ?string $model = Pinjam::class;

    protected static ?string $navigationIcon = 'heroicon-o-collection';

    protected static ?string $navigationGroup = 'Data Peminjaman';




    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Hidden::make('user_id')
                    ->label('Nama')
                    ->default(Auth::user()->id),
                Forms\Components\Select::make('buku_id')
                    ->label('Buku')
                    ->options(Buku::all()->pluck('judul','id'))
                    ->searchable(),
                Forms\Components\DatePicker::make('tanggal_pinjam')
                    ->reactive()
                    ->required(),
                Forms\Components\DatePicker::make('tanggal_pengembalian')
                    ->default(function (callable $get){
                        if($get('tanggal_pinjam') !== null){
                            dd($get('tanggal_pinjam'));
                        }
                    })
                    ->required(),
                Forms\Components\Toggle::make('status_pengembalian')
                    ->required(),
                Forms\Components\Textarea::make('deskripsi')
                    ->required()
                    ->maxLength(65535),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('User.name')->searchable(),
                Tables\Columns\TextColumn::make('Buku.judul')->searchable(),
                Tables\Columns\TextColumn::make('tanggal_pinjam')
                    ->date()->searchable(),
                Tables\Columns\TextColumn::make('tanggal_pengembalian')
                    ->date()->searchable(),
                Tables\Columns\IconColumn::make('status_pengembalian')
                    ->boolean()->searchable(),
                Tables\Columns\TextColumn::make('deskripsi')->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()->searchable(),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()->searchable(),
            ])
            ->filters([
                Tables\Filters\Filter::make('Sudah dikembalikan')
                    ->query(fn (Builder $query): Builder => $query->where('status_pengembalian', true)),
                Tables\Filters\Filter::make('Belum dikembalikan')
                    ->query(fn (Builder $query): Builder => $query->where('status_pengembalian', false))
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
            'index' => Pages\ListPinjams::route('/'),
            'create' => Pages\CreatePinjam::route('/create'),
            'edit' => Pages\EditPinjam::route('/{record}/edit'),
        ];
    }
}
