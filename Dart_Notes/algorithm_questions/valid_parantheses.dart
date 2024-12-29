/*
Bir dize verildi s sadece karakterleri içeren '(', ')', '{', '}', '[' ve ']',
 giriş dizesinin geçerli olup olmadığını belirleyin.

Bir giriş dizesi aşağıdaki durumlarda geçerlidir:

Açık parantezler aynı tür parantezlerle kapatılmalıdır.
Açık braketler doğru sırada kapatılmalıdır.
Her yakın braket aynı tipte karşılık gelen bir açık brakete sahiptir.
 
Örnek 1:
Giriş: s = "()"
Çıktı: doğru

Örnek 2:
Giriş: s = "() [] {}"
Çıktı: doğru

Örnek 3:
Giriş: s = "(]"
Çıktı: yanlış

Örnek 4:
Giriş: s = "([])"
Çıktı: doğru

Kısıtlamalar:
1 <= s.length <= 104
s sadece parantezlerden oluşur '()[]{}'.
*/

void main(List<String> args) {
  Solution solution = Solution();
  final String s = '))';
  bool result = solution.isValid(s);
  print('The string "$s" is valid: $result');
}

class Solution {
  bool isValid(String s) {
    List stack = [];
    Map<String, String> matchControlMap = {
      '(': ')',
      '[': ']',
      '{': '}',
    };

    for (int i = 0; i < s.length; i++) {
      String char = s[i];
      if (matchControlMap.containsKey(char)) {
        stack.add(s[i]);
      } else if (matchControlMap.containsValue(char)) {
        if (stack.isEmpty || stack.removeLast() != matchControlMap[char]) {
          return false;
        }
      }
    }
     return stack.isEmpty;
  }
}


//! Diğer Çözüm:
// class Solution {
//   bool isValid(String s) {
//     List<String> stack = [];
//     Map<String, String> pairs = {")": "(", "}": "{", "]": "["};

//     for (String char in s.split("")) {
//       if (pairs.values.contains(char)) {
//         stack.add(char);
//       } else if (pairs.keys.contains(char)) {
//         if (stack.isEmpty || stack.last != pairs[char]) {
//           return false;
//         }
//         stack.removeLast();
//       }
//     }

//     return stack.isEmpty;
//   }
// }
