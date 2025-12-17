<?php

namespace App\Filament\Resources;

use Dom\Text;
use Filament\Forms;
use Filament\Tables;
use App\Models\Contact;
use Filament\Forms\Form;

use Filament\Tables\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Resources\Components\Tab;
use Filament\Forms\Components\Repeater;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\ContactResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\ContactResource\RelationManagers;

class ContactResource extends Resource
{
    protected static ?string $model = Contact::class;

    protected static ?string $navigationIcon = 'heroicon-o-envelope';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()->schema([
                    TextInput::make('title')
                        ->required(),
                    TextInput::make('phone')
                        ->required(),
                    TextInput::make('email')
                        ->required(),
                    TextInput::make('whatsapp')
                        ->required(),
                    Repeater::make('location')
                        ->schema([
                            TextInput::make('title')
                                ->required(),
                            TextInput::make('location')
                                ->required(),
                        ])
                        ->required(),
                    TextInput::make('map')
                        ->required(),
                ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('phone')->label('Phone'),
                TextColumn::make('email')->label('Email'),
                TextColumn::make('whatsapp')->label('WhatsApp'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\EditAction::make(),
                    Tables\Actions\DeleteAction::make(),
                    Tables\Actions\ViewAction::make(),
                ]),
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
            'index' => Pages\ListContacts::route('/'),
            'create' => Pages\CreateContact::route('/create'),
            'edit' => Pages\EditContact::route('/{record}/edit'),
        ];
    }

    public static function canCreate(): bool
    {
        return Contact::count() === 0;
    }

    public static function getNavigationGroup(): ?string
    {
        return ('Contact');
    }
}
