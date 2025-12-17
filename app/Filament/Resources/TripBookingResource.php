<?php

namespace App\Filament\Resources;

use Filament\Forms;
use App\Models\Trip;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\TripBooking;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Select;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Actions\DeleteAction;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\TripBookingResource\Pages;
use App\Filament\Resources\TripBookingResource\RelationManagers;
use Filament\Resources\Concerns\Translatable;
class TripBookingResource extends Resource
{
    protected static ?string $model = TripBooking::class;

    protected static ?string $navigationIcon = 'heroicon-o-shopping-cart';
    // protected static ?string $navigationGroup = 'Trips';
    public static function form(Form $form): Form
    {
        return $form
        ->schema([
            Card::make()->schema([
                TextInput::make('name')
                    ->label(__('app.name'))
                    ->required(),
                TextInput::make('phone')
                    ->label(__('app.phone'))
                    ->required(),
                TextInput::make('tripname')
                    ->label(__('app.phone'))
                    ->required(),

            ])
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')
                ->label(__('app.Name')),
                TextColumn::make('phone')
                ->label(__('app.phone')),
                TextColumn::make('tripname')
                ->label(__('app.Trip Name')),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    // EditAction::make(),
                    ViewAction::make(),
                    // DeleteAction::make(),
                ])
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
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
            'index' => Pages\ListTripBookings::route('/'),
            // 'create' => Pages\CreateTripBooking::route('/create'),
            // 'edit' => Pages\EditTripBooking::route('/{record}/edit'),
        ];
    }

    // start tranlation of models



    public static function getNavigationGroup(): ?string
    {
    return ('Trip Bookings');
    }

    public static function getNavigationSort(): ?int
    {
        return 3; // ترتيب الظهور
    }

    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }




}
