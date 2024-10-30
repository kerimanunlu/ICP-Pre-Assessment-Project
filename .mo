// Hesap makinesi canister aktörü oluşturuluyor.
// Canister, bir akıllı sözleşme olarak çalışarak işlemler yapabilir.

actor hesap_makinesi {
  
  // Bellek hücresi oluşturuluyor. Bu değişken hesap makinesinin hafızasında tutulan değeri ifade eder.
  // `hucre` başlangıç değeri 0 olarak tanımlandı ve `var` ile tanımlandığı için mutable, yani değiştirilebilir.
  var hucre: Int = 0;

  // Toplama fonksiyonu tanımlanıyor.
  // `toplama` fonksiyonu, asenkron bir şekilde bir tam sayı alır ve `hucre`ye ekler.
  public func toplama(s: Int) : async Int {
    hucre += s; // `hucre` değişkenine gelen `s` değeri ekleniyor.
    hucre       // Güncellenen `hucre` değeri geri döndürülüyor.
    // (Debug.print(debug_show(hucre))); // `hucre`nin güncel değeri debug olarak gösterilebilir.
  };

  // Çıkarma fonksiyonu tanımlanıyor.
  // `cikarma` fonksiyonu, asenkron bir şekilde bir tam sayı alır ve `hucre`den çıkarır.
  public func cikarma(s: Int) : async Int {
    hucre -= s; // `hucre` değişkeninden gelen `s` değeri çıkarılıyor.
    hucre       // Güncellenen `hucre` değeri geri döndürülüyor.
  };

  // Çarpma fonksiyonu tanımlanıyor.
  // `carpma` fonksiyonu, asenkron bir şekilde bir tam sayı alır ve `hucre` ile çarpar.
  public func carpma(s: Int) : async Int {
    hucre *= s; // `hucre` değişkeni ile gelen `s` değeri çarpılıyor.
    hucre       // Güncellenen `hucre` değeri geri döndürülüyor.
  };

  // Bölme fonksiyonu tanımlanıyor.
  // `bolme` fonksiyonu, asenkron bir şekilde bir tam sayı alır ve `hucre`yi bu değere böler.
  public func bolme(s: Int) : async ?Int {
    // `s` sıfır ise bölme işlemi yapılmaz ve `null` değeri döndürülür.
    if (s == 0) {
      null
    } else {
      hucre /= s; // `hucre` değişkeni gelen `s` değeri ile bölünüyor.
      ?hucre      // Güncellenen `hucre` değeri opsiyonel olarak geri döndürülüyor.
    };
  };

  // Temizleme fonksiyonu tanımlanıyor.
  // `temizle` fonksiyonu `hucre` değerini sıfırlamak için kullanılır.
  public func temizle() : async () {
    hucre := 0; // `hucre` değeri sıfırlanıyor.
  };
}
