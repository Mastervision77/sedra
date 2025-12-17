<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\CategoryBlog;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\TextInput;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\CategoryBlogResource\Pages;
use App\Filament\Resources\CategoryBlogResource\RelationManagers;

class CategoryBlogResource extends Resource
{
    protected static ?string $model = CategoryBlog::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-group';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->schema([



                        TextInput::make('name')
                            ->label('Title')
                            ->required()
                            ->unique(ignoreRecord: true)
                            ->live(onBlur: true)
                            ->afterStateUpdated(function (?string $state, callable $set) {
                                if ($state) {
                                    $slug = preg_replace('/\s+/u', '-', trim($state));
                                    $slug = preg_replace('/[^\p{Arabic}\p{L}\p{N}\-]+/u', '', $slug);
                                    $set('slug', strtolower($slug));
                                }
                            }),

                        Hidden::make('slug')->required(),

                    ])
                    ->columns(1),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name')->label('Title')->searchable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),

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
            'index' => Pages\ListCategoryBlogs::route('/'),
            'create' => Pages\CreateCategoryBlog::route('/create'),
            'edit' => Pages\EditCategoryBlog::route('/{record}/edit'),
        ];
    }

    public static function getNavigationGroup(): ?string
    {
        return ('CategoryBlog');
    }
}
