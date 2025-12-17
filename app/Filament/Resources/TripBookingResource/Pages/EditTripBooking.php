<?php

namespace App\Filament\Resources\TripBookingResource\Pages;

use App\Filament\Resources\TripBookingResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditTripBooking extends EditRecord
{
    protected static string $resource = TripBookingResource::class;

    protected function getHeaderActions(): array
    {
        return [
            // Actions\DeleteAction::make(),
            // Actions\LocaleSwitcher::make(),
        ];
    }
}
