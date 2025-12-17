<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\TopHommeSection;
use Filament\Resources\Resource;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\TopHommeSectionResource\Pages;
use App\Filament\Resources\TopHommeSectionResource\RelationManagers;
use Filament\Forms\Components\Group;

class TopHommeSectionResource extends Resource
{
    protected static ?string $model = TopHommeSection::class;

    protected static ?string $navigationIcon = 'heroicon-o-presentation-chart-line';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Card::make()
                    ->schema([
                        TextInput::make('title')
                            ->required()
                            ->maxLength(255),
                        TextInput::make('subtitle')
                            ->required()
                            ->maxLength(255),
                        FileUpload::make('video')
                            ->required(),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('title')->limit(50),
                TextColumn::make('subtitle')->limit(50),
            ])
            ->filters([

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

        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListTopHommeSections::route('/'),
            'create' => Pages\CreateTopHommeSection::route('/create'),
            'edit' => Pages\EditTopHommeSection::route('/{record}/edit'),
        ];
    }


    public static function canCreate(): bool
    {
        return TopHommeSection::count() === 0;
    }

    public static function getNavigationGroup(): ?string
    {
        return ('Top Homme Sections');
    }
}
