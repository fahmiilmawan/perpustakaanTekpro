<?php

namespace App\Filament\Resources;

use AlperenErsoy\FilamentExport\Actions\FilamentExportBulkAction;
use App\Filament\Resources\PinjamResource\Pages;
use App\Filament\Resources\PinjamResource\RelationManagers;
use App\Models\Buku;
use App\Models\Pinjam;
use App\Models\User;
use Carbon\Carbon;
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
                    ->searchable()
                    ->required(),
                Forms\Components\DateTimePicker::make('tanggal_pinjam')
                    ->default(Carbon::now())
                    ->disabled(!auth()->user()->is_admin)
                    ->required(),
                Forms\Components\DateTimePicker::make('tanggal_pengembalian')
                    ->default(Carbon::now()->addDays(7))
                    ->disabled(!auth()->user()->is_admin)
                    ->required(),
                Forms\Components\Toggle::make('status_pengembalian')
                    ->disabled(!auth()->user()->is_admin),
                Forms\Components\Textarea::make('deskripsi')
                    ->required()
                    ->disabled(!auth()->user()->is_admin)
                    ->default('Harap dikembalikan sesuai tanggal pengembalian, Apabila melebihi dari tanggal pengembalian akan dikenakan denda')
                    ->maxLength(65535),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('User.name')
                    ->label('Nama Anggota')
                    ->searchable(),
                Tables\Columns\TextColumn::make('Buku.judul')->searchable(),
                Tables\Columns\TextColumn::make('tanggal_pinjam')
                    ->date()->searchable(),
                Tables\Columns\TextColumn::make('tanggal_pengembalian')
                    ->date(),
                Tables\Columns\IconColumn::make('status_pengembalian')
                    ->boolean()->searchable(),
                Tables\Columns\TextColumn::make('deskripsi')
                    ->searchable()
                    ->limit(20),
            ])
            ->filters([
                Tables\Filters\Filter::make('Sudah dikembalikan')
                    ->query(fn (Builder $query): Builder => $query->where('status_pengembalian', true)),

                Tables\Filters\Filter::make('Belum dikembalikan')
                    ->query(fn (Builder $query): Builder => $query->where('status_pengembalian', false))
            ])
            ->actions([
                Tables\Actions\EditAction::make()
                    ->hidden(!auth()->user()->is_admin),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make()
                    ->hidden(!auth()->user()->is_admin),
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
            'index' => Pages\ListPinjams::route('/'),
            'create' => Pages\CreatePinjam::route('/create'),
            'edit' => Pages\EditPinjam::route('/{record}/edit'),
        ];
    }
}
