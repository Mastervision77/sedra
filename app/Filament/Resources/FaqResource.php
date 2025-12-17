<?php

namespace App\Filament\Resources;

use App\Models\Faq;
use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Wizard;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\FaqResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\FaqResource\RelationManagers;

class FaqResource extends Resource
{
    protected static ?string $model = Faq::class;

    protected static ?string $navigationIcon = 'heroicon-o-hand-raised';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()->schema([
                    Wizard::make([
                        Wizard\Step::make('basicinformation')
                            ->label('Main Information')
                            ->schema([

                                Select::make('page_type')
                                    ->label('Page Type')
                                    ->options([
                                        'home' => 'Home',
                                        'faqpage' => 'Faq Page',
                                    ])
                                    ->required()
                                    ->reactive(),

                                // Home Repeater
                                Repeater::make('faq_home')
                                    ->label('Home FAQs')
                                    ->schema([
                                        TextInput::make('faq_title')->required(),
                                        Textarea::make('answer')->required(),
                                    ])
                                    ->visible(fn($get) => $get('page_type') === 'home')
                                    ->required(fn($get) => $get('page_type') === 'home'),

                                TextInput::make('title')
                                    ->label('Title')
                                    ->required()
                                    ->visible(fn($get) => $get('page_type') === 'faqpage'),
                                // Faq Page Repeater
                                Repeater::make('faq')
                                    ->label('Faq Page FAQs')
                                    ->schema([
                                        TextInput::make('faq_title')->required(),
                                        Textarea::make('answer')->required(),
                                    ])
                                    ->visible(fn($get) => $get('page_type') === 'faqpage')
                                    ->required(fn($get) => $get('page_type') === 'faqpage'),

                            ]),

                    ]),
                ]),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('page_type')->label('Page Type'),
                TextColumn::make('title')->limit(50)->label('Title'),
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
            'index' => Pages\ListFaqs::route('/'),
            'create' => Pages\CreateFaq::route('/create'),
            'edit' => Pages\EditFaq::route('/{record}/edit'),
        ];
    }

    public static function getNavigationGroup(): ?string
    {
        return ('FAQs');
    }
}
