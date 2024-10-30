# ICP-Pre-Assessment-Project

# Hesap Makinesi Canister Aktörü

Bu proje, Internet Computer (IC) platformunda çalışan basit bir hesap makinesi Canister aktörünü içerir. **hesap_makinesi** adındaki bu canister, temel matematiksel işlemleri gerçekleştirir ve sonucunu belleğinde tutar. Kod, Motoko dilinde yazılmıştır.

## Özellikler

- **Toplama**: Bellek hücresine verilen değeri ekler.
- **Çıkarma**: Bellek hücresinden verilen değeri çıkarır.
- **Çarpma**: Bellek hücresindeki değeri verilen değerle çarpar.
- **Bölme**: Bellek hücresindeki değeri verilen değere böler. (Bölme işleminde, bölen sıfırsa `null` döner)
- **Temizleme**: Bellek hücresini sıfırlar.

## Başlangıç Değeri

- `hucre`: 0 olarak tanımlanmıştır ve yapılan işlemler sonucu güncellenir.

## Fonksiyonlar ve Kullanım

1. ### `toplama(s: Int) : async Int`
   - Bellek hücresine `s` değeri ekler ve güncel değeri döndürür.
   
2. ### `cikarma(s: Int) : async Int`
   - Bellek hücresinden `s` değerini çıkarır ve güncel değeri döndürür.
   
3. ### `carpma(s: Int) : async Int`
   - Bellek hücresindeki değeri `s` ile çarpar ve güncel değeri döndürür.

4. ### `bolme(s: Int) : async ?Int`
   - Bellek hücresindeki değeri `s` ile böler. Eğer `s` sıfırsa, `null` döner; aksi halde güncel değeri döndürür.

5. ### `temizle() : async ()`
   - Bellek hücresindeki değeri sıfırlar.

