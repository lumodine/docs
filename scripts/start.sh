#!/bin/bash

# Ana dizindeki klasörleri kontrol et
for dir in */; do
    # Eğer package.json dosyası varsa
    if [[ -f "${dir}package.json" ]]; then
        cd "$dir" || continue

        # npm run dev komutunu çalıştır
        npm run dev &

        # Önceki dizine geri dön
        cd - > /dev/null
    fi
done
