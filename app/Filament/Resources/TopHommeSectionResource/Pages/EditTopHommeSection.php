<?php

namespace App\Filament\Resources\TopHommeSectionResource\Pages;

use App\Filament\Resources\TopHommeSectionResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditTopHommeSection extends EditRecord
{
    protected static string $resource = TopHommeSectionResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
