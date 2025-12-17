<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\About;
use Filament\Forms\Form;
use Filament\Tables\Table;


use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Wizard;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\AboutResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\AboutResource\RelationManagers;

class AboutResource extends Resource
{
    protected static ?string $model = About::class;

    protected static ?string $navigationIcon = 'heroicon-o-face-smile';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()->schema([
                    Wizard::make([
                        // Step 1: Home Page
                        Wizard\Step::make('homepage')
                            ->label('Home Page')
                            ->schema([
                                TextInput::make('title_home')
                                    ->required()
                                    ->maxLength(255),
                                Textarea::make('content_home')
                                    ->required(),
                            ]),

                        // Step 2: About Page - Step 1
                        Wizard\Step::make('aboutpage_info')
                            ->label('About Page Info')
                            ->schema([
                                TextInput::make('title')
                                    ->required()
                                    ->maxLength(255),
                                Textarea::make('content')
                                    ->required(),
                            ]),

                        // Step 3: About Page - Step 2
                        Wizard\Step::make('aboutpage_vision_mission')
                            ->label('Vision & Mission')
                            ->schema([
                                Textarea::make('vision')
                                    ->required(),
                                Textarea::make('mission')
                                    ->required(),
                            ]),

                        // Step 4: About Page - Step 3
                        Wizard\Step::make('aboutpage_offer')
                            ->label('Offer & Why Choose Us')
                            ->schema([
                                Repeater::make('offer')
                                    ->label('What We Offer')
                                    ->schema([
                                        TextInput::make('item')->required(),
                                    ])
                                    ->required(),
                                Repeater::make('whychoose')
                                    ->label('Why Choose Us')
                                    ->schema([
                                        TextInput::make('item')->required(),
                                    ])
                                    ->required(),
                            ]),
                        // Step 5: Media 3
                        Wizard\Step::make('media')
                            ->label('Media')
                            ->schema([
                                FileUpload::make('homeimage')
                                    ->label('Home Image')
                                    ->image()
                                    ->required(),
                                FileUpload::make('image')
                                    ->label('Documents ""Multi Image""')
                                    ->image()
                                    ->multiple()
                                    ->required(),
                            ]),
                    ])->skippable(),
                ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                //
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
            'index' => Pages\ListAbouts::route('/'),
            'create' => Pages\CreateAbout::route('/create'),
            'edit' => Pages\EditAbout::route('/{record}/edit'),
        ];
    }

    public static function canCreate(): bool
    {
        return About::count() === 0;
    }

    public static function getNavigationGroup(): ?string
    {
        return ('About');
    }
}
