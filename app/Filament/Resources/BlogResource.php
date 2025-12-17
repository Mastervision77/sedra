<?php

namespace App\Filament\Resources;


use Filament\Forms;
use App\Models\Blog;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Wizard;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\RichEditor;
use Illuminate\Database\Eloquent\Builder;
use Filament\Forms\Components\Wizard\Step;
use App\Filament\Resources\BlogResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\BlogResource\RelationManagers;
use Filament\Forms\Components\FileUpload;

class BlogResource extends Resource
{
    protected static ?string $model = Blog::class;

    protected static ?string $navigationIcon = 'heroicon-o-newspaper';

    public static function form(Form $form): Form
    {
        return $form->schema([
            Card::make()->schema([

                Wizard::make([
                    /* STEP 1 */
                    Step::make('Basic Info')
                        ->schema([
                            Select::make('categoryblog_id')
                                ->label('Category')
                                ->relationship('categoryBlog', 'name')
                                ->required(),

                            TextInput::make('title')
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

                            TextInput::make('subtitle'),
                        ]),

                    /* STEP 2 */
                    Step::make('Author & Date')
                        ->schema([
                            TextInput::make('author'),
                            DatePicker::make('date'),
                        ]),

                    /* STEP 3 */
                    Step::make('Content')
                        ->schema([
                            RichEditor::make('content')
                                ->required()
                                ->columnSpanFull(),
                        ]),
                    /* STEP 4 */
                    Step::make('Media')
                        ->schema([
                            FileUpload::make('innerimage')
                                ->required(),
                            FileUpload::make('outerimage')
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

                Tables\Columns\TextColumn::make('title')
                    ->label('Title')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('author')
                    ->label('Author')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('date')
                    ->label('Date')
                    ->sortable()
                    ->searchable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
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
            'index' => Pages\ListBlogs::route('/'),
            'create' => Pages\CreateBlog::route('/create'),
            'edit' => Pages\EditBlog::route('/{record}/edit'),
        ];
    }

    public static function getNavigationGroup(): ?string
    {
        return ('Blog');
    }
}
