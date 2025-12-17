<?php

namespace App\Traits;

use Illuminate\Http\UploadedFile;
use Illuminate\Support\Str;

trait HasWebpImage
{
    protected static function bootHasWebpImage()
    {
        static::saving(function ($model) {
            foreach ($model->getAttributes() as $key => $value) {

                // ملف واحد
                if ($value instanceof UploadedFile) {
                    $model->$key = self::toWebp($value, $model->getImagePath());
                }

                // ملفات متعددة
                elseif (is_array($value) && count($value) > 0 && $value[0] instanceof UploadedFile) {
                    $model->$key = array_map(
                        fn($img) => self::toWebp($img, $model->getImagePath()),
                        $value
                    );
                }
            }
        });
    }

    protected static function toWebp(
        UploadedFile $image,
        string $path,
        int $quality = 80
    ): string {
        $name = Str::uuid() . '.webp';
        $storagePath = storage_path("app/public/$path");

        // انشاء المجلد لو مش موجود
        if (!is_dir($storagePath)) {
            mkdir($storagePath, 0755, true);
        }

        $fullPath = $storagePath . '/' . $name;

        $img = imagecreatefromstring(file_get_contents($image));
        imagewebp($img, $fullPath, $quality);
        imagedestroy($img);

        return "$path/$name";
    }

    protected function getImagePath(): string
    {
        return 'images';
    }
}
