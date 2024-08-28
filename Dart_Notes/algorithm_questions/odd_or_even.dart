//! Bu örnekte bir sayının tek mi çift mi olduğunu bulalım:
//* eğer sayi çift ise true, tek ise false yazdıralım.
void main() {
  final int sayi1 = 150; //? Sayıyı belirleyelim. (Bu sayı herhangi bir yerden gelen değer olabilir.)
  final int sayi2 = 155; //? Sayıyı belirleyelim (Bu sayı herhangi bir yerden gelen değer olabilir.)

//! Fonksitonu sayı için uygulayarak tek/çift kontrolü yapalım ve sonucu print ile yazdıralım.
  print(isOddOrEven(sayi1));
  //! Fonksitonu sayı için uygulayarak tek/çift kontrolü yapalım ve sonucu print ile yazdıralım.
  print(isOddOrEven(sayi2));
}

//* Tek çift kontrolünü yapan fonksiyon:
//? Fonksiyonu tanımlayalım ve bool değişleninde bir değer döndüreceğini belirtelim (bool = True - False). Parametre olarak bir int değer verelim (int x)
bool isOddOrEven(int x) {
  if (x % 2 == 0) {
    //? Eğer sayının 2 ile bölümünden kalan 0 ise sayı çifttir. True dönmesini belirleriz. (Örneğin 10/2 kalan = 0)
    return true; //* return ile değer döndürürüz.
  } else {
    //? Eğer sayının 2 ile bölümünden kalan 0 değilse false döndürmeyi belirleriz.
    return false; //* return ile değer döndürürüz.
  }
}
