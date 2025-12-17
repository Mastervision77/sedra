<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Review;
use Laravel\Pail\File;
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
use Mokhosh\FilamentRating\Components\Rating;
use App\Filament\Resources\ReviewResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\ReviewResource\RelationManagers;

class ReviewResource extends Resource
{
    protected static ?string $model = Review::class;

    protected static ?string $navigationIcon = 'heroicon-o-star';

    public static function form(Form $form): Form
    {
        return $form

            ->schema([

                Card::make()->schema([
    Wizard::make([
        Wizard\Step::make('basicinformation')
            ->label('Main Information')
            ->schema([

                Select::make('review')
                    ->label('Review Type')
                    ->options([
                        'text' => 'Text',
                        'video' => 'Video',
                    ])
                    ->required()
                    ->reactive(),

                // TEXT REVIEW FIELDS
                Rating::make('rateing')
                    ->label('Rating')
                    ->default(5)
                    ->required()
                    ->visible(fn ($get) => $get('review') === 'text'),

                Textarea::make('content')
                    ->required()
                    ->visible(fn ($get) => $get('review') === 'text'),

                TextInput::make('name')
                    ->required()
                    ->visible(fn ($get) => $get('review') === 'text'),

                TextInput::make('address')
                    ->required()
                    ->visible(fn ($get) => $get('review') === 'text'),

                FileUpload::make('image')
                    ->label('Image')
                    ->disk('public')
                    ->directory('reviews')
                    ->image()
                    ->required()
                    ->visible(fn ($get) => $get('review') === 'text'),

                // VIDEO REVIEW FIELD
                TextInput::make('url')
                    ->label('Video URL')
                    ->required()
                    ->visible(fn ($get) => $get('review') === 'video'),

            ]),
    ]),

                ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->limit(50),
                TextColumn::make('address')->limit(50),
                TextColumn::make('rateing'),
                TextColumn::make('review')->label('Review Type'),
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
            'index' => Pages\ListReviews::route('/'),
            'create' => Pages\CreateReview::route('/create'),
            'edit' => Pages\EditReview::route('/{record}/edit'),
        ];
    }

    public static function getNavigationGroup(): ?string
    {
        return ('Reviews');
    }
}
