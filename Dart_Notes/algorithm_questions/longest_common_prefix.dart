/*
SORU:

Bir metin dizisi arasında en uzun başlangıç kısmını bulmak:
Ortak bir önek yoksa, boş bir dize döndürün "".

Örnek 1:
Giriş: strs = ["çiçek", "akış", "uçuş"]
Çıktı: "Fl"
Açıklama: Giriş dizeleri arasında ortak başlangıç Fl harfleridir..

Örnek 2:
Giriş: strs = ["köpek", "yarış arabası", "araba"]
Çıktı: ""
Açıklama: Giriş dizeleri arasında ortak bir önek yoktur.
*/

void main() {
  // Örnek testler
  List<String> example1 = ["flower", "flow", "flight"];
  print(longestCommonPrefix(example1)); // Çıktı: "fl"

  List<String> example2 = ["dog", "racecar", "car"];
  print(longestCommonPrefix(example2)); // Çıktı: ""
}

String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty) return ""; // Eğer liste boşsa, boş string döndür

  // İlk kelimeyi başlangıç olarak al
  String prefix = strs[0];

  // Diğer kelimelerle karşılaştır
  for (int i = 1; i < strs.length; i++) {
    // Geçerli kelime `prefix` ile eşleşene kadar kırp
    while (!strs[i].startsWith(prefix)) {
      prefix = prefix.substring(0, prefix.length - 1);
      if (prefix.isEmpty) return ""; // Eğer prefix tamamen boşaldıysa, döndür
    }
  }

  return prefix;
}
