<?php

namespace App\Filament\Resources\TripBookingResource\Pages;

use App\Filament\Resources\TripBookingResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListTripBookings extends ListRecords
{
    protected static string $resource = TripBookingResource::class;

    protected function getHeaderActions(): array
    {
        return [
            // Actions\CreateAction::make(),
        ];
    }
}
