<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\ContactForm;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Actions\DeleteAction;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\ContactFormResource\Pages;
use App\Filament\Resources\ContactFormResource\RelationManagers;

class ContactFormResource extends Resource
{
    protected static ?string $model = ContactForm::class;

    protected static ?string $navigationIcon = 'heroicon-o-clipboard-document-list';

    public static function form(Form $form): Form
    {
        return $form
        ->schema([
            Card::make()->schema([
                TextInput::make('name')

                    ->required(),
                    TextInput::make('email')

                    ->required(),
                    TextInput::make('primaryPhone')

                    ->required(),
                    Forms\Components\RichEditor::make('message')

                            ->required(),
            ])
        ]);;
    }

    public static function table(Table $table): Table
    {
        return $table
        ->columns([
            TextColumn::make('name'),
            TextColumn::make('email'),
            TextColumn::make('primaryPhone'),
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
            'index' => Pages\ListContactForms::route('/'),
            // 'create' => Pages\CreateContactForm::route('/create'),
            // 'edit' => Pages\EditContactForm::route('/{record}/edit'),
        ];
    }

    public static function getNavigationGroup(): ?string
    {
        return ('Contact Form');
    }


    public static function getNavigationSort(): ?int
    {
        return 14; // ترتيب الظهور
    }
    protected static ?int $navigationSort=1;




    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }

    public static function canCreate(): bool
    {
        return ContactForm::count() === 0;
    }


}
