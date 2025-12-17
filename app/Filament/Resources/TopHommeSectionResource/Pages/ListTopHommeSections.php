<?php

namespace App\Filament\Resources\TopHommeSectionResource\Pages;

use App\Filament\Resources\TopHommeSectionResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListTopHommeSections extends ListRecords
{
    protected static string $resource = TopHommeSectionResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
