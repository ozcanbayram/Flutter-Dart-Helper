// Bir sayı al.
// Eğer sayı ile sayının tersten okunuşu aynı ise bu bir polindrom sayıdır. (true) değil ise (false)

void main() {
  int number1 = 121;
  int number2 = 10;

  print(Solution().isPalindrome(number1));
  print(Solution().isPalindrome(number2));
}

class Solution {
  bool isPalindrome(int x) {
    if (x < 0)
      return false;
    else {
      //int'i stringe çevir:
      String numberString = x.toString();
      //stringi terse çevir
      String reverseString = numberString.split('').reversed.join('');
      //string'i tekrar int'e çevir:
      int lastInt = int.parse(reverseString);
      //kontrol et:
      if (x == lastInt) {
        return true;
      }
      return false;
    }
  }
}
