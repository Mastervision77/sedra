<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Settings;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Illuminate\Validation\Rule;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Wizard;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\ImageColumn;
use Filament\Forms\Components\FileUpload;
use Filament\Tables\Actions\DeleteAction;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\SettingsResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\SettingsResource\RelationManagers;
use Dom\Text;
use Filament\Resources\Concerns\Translatable;
class SettingsResource extends Resource
{
    protected static ?string $recordRouteKeyName = 'id';
    protected static ?string $model = Settings::class;

    protected static ?string $navigationIcon = 'heroicon-o-cog-6-tooth';
    // protected static ?string $navigationGroup = 'Settings';

    public static function form(Form $form): Form
{
    $record = $form->getRecord(); // Get the current model record
    $recordId = $record ? $record->id : null; // Get the record ID if it exists
    return $form

        ->schema([
            Card::make()->schema([
                Wizard::make([
                    Wizard\Step::make('basicinformation')

                        ->schema([
                            TextInput::make('sitename')

                                ->required(),
                            TextInput::make('phone')

                                ->required(),
                            TextInput::make('mail')

                                ->required(),

                            Textarea::make('descriptionfooter')

                                ->required(),


                        ]),

                    Wizard\Step::make('socialmedia')

                        ->schema([
                        Repeater::make('social_midea')

                        ->schema([

                            TextInput::make('url')
                                ->label(__('URL'))
                                ->required(),
                            Select::make('platform')

                                ->required()
                                ->options([
                                    'fa-brands fa-facebook' => 'Facebook',
                                    'fa-brands fa-instagram' => 'Instagram',
                                    'fa-brands fa-linkedin' => 'LinkedIn',
                                    'fa-brands fa-youtube' => 'YouTube',
                                    'fa-brands fa-twitter' => 'Twitter',
                                    'fa-brands fa-whatsapp' => 'WhatsApp',
                                    'fa-brands fa-pinterest' => 'Pinterest',
                                    'fa-brands fa-tiktok' => 'TikTok',
                                ]),
                        ])
                            ->columns(3),
                    ]),

                    Wizard\Step::make('media')

                        ->schema([
                            FileUpload::make('logo')

                                ->image()
                                ->maxSize(2048)
                                ->required()
                                ->rules(['mimes:jpeg,png,jpg,gif,svg,webp', 'max:2048'])
                                ->directory('Logo'),


                            FileUpload::make('favicon')

                                ->image()
                                ->maxSize(512) // Max size 512KB
                                ->required()
                                ->rules(['mimes:jpeg,png,jpg,gif,svg,webp', 'max:512'])
                                ->directory('Favicon'),


                            FileUpload::make('footerlogo')

                                ->image()
                                ->maxSize(2048)
                                ->required()
                                ->rules(['mimes:jpeg,png,jpg,gif,svg,webp', 'max:512'])
                                ->directory('footerlogo'),

                        ]),

                        Wizard\Step::make('description_pages')
                            ->schema([
                            TextInput::make('title_contactus_in_home')
                                    ->required(),
                            TextInput::make('sub_title_contact_in_home')
                                    ->required(),
                            TextInput::make('title_media_center_home')
                                    ->required(),
                            TextInput::make('sub_title_media_center_home')
                                    ->required(),
                            TextInput::make('title_faq_home')
                                    ->required(),
                            TextInput::make('sub_title_faq_home')
                                    ->required(),
                            TextInput::make('title_reviews_home')
                                    ->required(),
                            TextInput::make('sub_title_reviews_home')
                                    ->required(),
                            TextInput::make('title_destination_home')
                                    ->required(),
                            TextInput::make('sub_title_destination_home')
                                    ->required(),
                            TextInput::make('title_packages_home')
                                    ->required(),
                            TextInput::make('sub_title_packages_home')
                                ->required(),

                            TextInput::make('title_destination_page')
                                    ->required(),
                            TextInput::make('sub_title_destination_page')
                            ->required(),
                            TextInput::make('title_sticky_destination_page')
                                ->required(),
                            TextInput::make('sub_title_sticky_destination_page')
                                ->required(),
                            TextInput::make('title_packages_page')
                                    ->required(),
                            TextInput::make('sub_title_packages_page')
                                    ->required(),

                            TextInput::make('title_blog_page')
                                    ->required(),
                            TextInput::make('sub_title_blog_page')
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
                TextColumn::make('sitename')
                    ,

                ImageColumn::make('logo')
                    ,
                ImageColumn::make('favicon')
                   ,
                ImageColumn::make('footerlogo')
                   ,

        ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    EditAction::make(),
                    ViewAction::make(),
                    DeleteAction::make(),
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
            'index' => Pages\ListSettings::route('/'),
            'create' => Pages\CreateSettings::route('/create'),
            'edit' => Pages\EditSettings::route('/{record:id}/edit'),
        ];
    }

    //  لاخفاء زرار الاضافة بعد اضافه اول صف فى الداتا بيز
    public static function canCreate(): bool
    {
        return Settings::count() === 0;
    }

// start tranlation of models




    public static function getNavigationGroup(): ?string
    {
        return 'Setting';
    }

    public static function getNavigationSort(): ?int
    {
        return 15; // ترتيب الظهور
    }




}
