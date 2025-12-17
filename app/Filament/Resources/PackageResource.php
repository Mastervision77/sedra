<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use Laravel\Pail\File;
use App\Models\Package;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\Destination;

use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Tabs;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Wizard;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Filament\Tables\Filters\SelectFilter;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\PackageResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\PackageResource\RelationManagers;

class PackageResource extends Resource
{
    protected static ?string $model = Package::class;

    protected static ?string $navigationIcon = 'heroicon-o-square-3-stack-3d';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()->schema([
                    Wizard::make([
                        Wizard\Step::make('Basic Information')
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

                                Hidden::make('slug')->required(),

                                Textarea::make('subtitle')->required(),

                                TextInput::make('price')->required(),

                                Select::make('destination_id')
                                    ->required()
                                    ->options(Destination::pluck('title', 'id')),
                            ]),

                        Wizard\Step::make('Package Details')
                            ->schema([
                                Tabs::make('Details')
                                    ->tabs([
                                        Tabs\Tab::make('Overview')
                                            ->schema([
                                                TextInput::make('duration')->required(),
                                                TextInput::make('people_number')->required(),
                                                Forms\Components\RichEditor::make('overview')->required(),
                                            ]),
                                        Tabs\Tab::make('Itinerary')
                                            ->schema([
                                                Repeater::make('itinerary')
                                                    ->schema([
                                                        TextInput::make('day')->required(),
                                                        TextInput::make('title')->required(),
                                                        Forms\Components\RichEditor::make('content')->required(),
                                                    ])
                                                    ->required(),
                                            ]),

                                        Tabs\Tab::make('Includes')
                                            ->schema([
                                                Repeater::make('includes')
                                                    ->label('Includes')
                                                    ->schema([
                                                        TextInput::make('item')->required(),
                                                    ])
                                                    ->required(),
                                            ]),
                                        Tabs\Tab::make('Excludes')
                                            ->schema([

                                                Repeater::make('notincludes')
                                                    ->label('Not Includes')
                                                    ->schema([
                                                        TextInput::make('item')->required(),
                                                    ])
                                                    ->required(),
                                            ]),

                                        Tabs\Tab::make('Pricing')
                                            ->schema([
                                                Repeater::make('pricing')
                                                    ->schema([
                                                        TextInput::make('title')->required(),
                                                        TextInput::make('price')->required(),
                                                    ])
                                                    ->required(),
                                            ]),
                                        Tabs\Tab::make('Payment')
                                            ->schema([

                                                Repeater::make('payterms')
                                                    ->schema([
                                                        TextInput::make('item')->required(),
                                                    ])
                                                    ->required(),
                                            ]),
                                    ]),
                            ]),
                        Wizard\Step::make('Media')
                            ->schema([
                                FileUpload::make('outerimage')
                                    ->required(),
                                FileUpload::make('innerimage')
                                    ->required(),
                                FileUpload::make('gallary')
                                    ->label('Gallary Multiple Upload')
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
            ->defaultSort('id', 'asc')
            ->columns([
                TextColumn::make('title')->label('Title')->sortable()->searchable(),
                TextColumn::make('price')->label('Price')->sortable()->searchable(),
            ])
            ->filters([
                SelectFilter::make('destination')
                    ->relationship('destination', 'title'),
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
            'index' => Pages\ListPackages::route('/'),
            'create' => Pages\CreatePackage::route('/create'),
            'edit' => Pages\EditPackage::route('/{record}/edit'),
        ];
    }
    public static function getNavigationGroup(): ?string
    {
        return ('Packages');
    }
}
