void main() {
  print(Solution().romanToInt("III")); // Çıktı: 3
  print(Solution().romanToInt("LVIII")); // Çıktı: 58
  print(Solution().romanToInt("MCMXCIV")); // Çıktı: 1994
  print(Solution().romanToInt('MXIIV'));
}

class Solution {
  int romanToInt(String s) {
    // Romen rakamlarını temsil eden bir harita oluşturuyoruz.
    final Map<String, int> romanMap = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    int result = 0;

    for (int i = 0; i < s.length; i++) {
      // Şu anki harfin değerini al
      int current = romanMap[s[i]]!;

      // Eğer bu harf kendisinden sonra gelenden küçükse, çıkartma işlemi yap
      if (i < s.length - 1 && current < romanMap[s[i + 1]]!) {
        result -= current;
      } else {
        // Aksi halde topla
        result += current;
      }
    }

    return result;
  }
}
