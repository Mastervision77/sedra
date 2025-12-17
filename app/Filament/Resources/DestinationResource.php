<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\Destination;
use Filament\Resources\Resource;

use Filament\Forms\Components\Card;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Wizard;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\DestinationResource\Pages;
use App\Filament\Resources\DestinationResource\RelationManagers;

class DestinationResource extends Resource
{
    protected static ?string $model = Destination::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()->schema([
                    Wizard::make([
                        Wizard\Step::make('basicinformation')
                            ->schema([
                                TextInput::make('title')
                                    ->required()
                                    ->unique(ignoreRecord: true)
                                    ->live(onBlur: true)
                                    ->afterStateUpdated(function (?string $state, callable $set) {
                                        if ($state) {
                                            $slug = preg_replace('/\s+/u', '-', trim($state));
                                            $slug = preg_replace('/[^\p{Arabic}\p{L}\p{N}\-]+/u', '', $slug);
                                            $set('slug', $slug);
                                        }
                                    }),
                        Hidden::make('slug')
                            ->label(__('Slug'))
                            ->required(),
                        Textarea::make('subtitle')
                                    ->required(),
                                TextInput::make('location')->required(),
                            ])->columns(2),

                        Wizard\Step::make('content')
                            ->schema([
                                Forms\Components\RichEditor::make('content')
                                    ->required(),
                            ]),

                        Wizard\Step::make('images')
                            ->schema([
                                FileUpload::make('outerimage')
                                    ->required()
                                    ->image(),
                                FileUpload::make('innerimage')
                                    ->required()
                                    ->image(),
                                FileUpload::make('gallaryimages')
                                    ->label('Gallery Images (Multiple)')
                                    ->required()
                                    ->image()
                                    ->multiple()
                                    ->columnSpanFull(),
                            ]),
                    ])
                        ->skippable()
                        ->columns(1),
                ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('title')->label('Title')->sortable()->searchable(),
                Tables\Columns\TextColumn::make('location')->label('Location')->sortable()->searchable(),
                Tables\Columns\ImageColumn::make('outerimage')->label('Outer Image')->rounded(),
                Tables\Columns\ImageColumn::make('innerimage')->label('Inner Image')->rounded(),

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
            'index' => Pages\ListDestinations::route('/'),
            'create' => Pages\CreateDestination::route('/create'),
            'edit' => Pages\EditDestination::route('/{record}/edit'),
        ];
    }

    public static function getNavigationGroup(): ?string
    {
        return ('Destinations');
    }
}
