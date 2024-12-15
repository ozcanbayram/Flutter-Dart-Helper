/* SORU: Bir tamsayı dizisi verildiğinde nums ve bir tamsayı target, dönüş iki sayının endeksleri target.
Her girdinin sahip olacağını varsayabilirsiniz. tam olarak bir çözüm, ve aynı eleman iki kez.
Cevabı istediğiniz sırayla iade edebilirsiniz.

Örnek 1:
Giriş: nums = [2,7,11,15], hedef = 9
Çıktı: [0,1]
Açıklama: Sayılar [0] + sayılar [1] == 9 olduğundan, geri döneriz [0, 1]. */

void main() {
  Solution solution = Solution();
  final result = solution.twoSum([2, 5, 8, 4], 13); // [0, 1]
  print(result);
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> numMap = {};

    for (var i = 0; i < nums.length; i++) {
      int complment = target - nums[i];

      if (numMap.containsKey(complment)) {
        return [numMap[complment]!, i];
      }
      numMap[nums[i]] = i;
    }
    throw Exception('No solution found');
  }
}

//! ÇÖZÜM:

// class Solution {
//   List<int> twoSum(List<int> nums, int target) {
    //* Map, sayıları ve onların indekslerini tutacak
//     Map<int, int> numMap = {}; 
    
     //* nums dizisini gezip her sayıyı kontrol ediyoruz
//     for (int i = 0; i < nums.length; i++) {
       // hedefi elde etmek için eksik olan sayı
//       int complement = target - nums[i];  // complement, target - nums[i] 

      //* Eğer complement zaten map'te varsa, çözümü bulduk demektir
//       if (numMap.containsKey(complement)) {
         //* complement'ın indeksini ve mevcut indeksimizi döndürüyoruz
//         return [numMap[complement]!, i];  
//       }

      //* Eğer complement yoksa, bu sayıyı map'e ekliyoruz
//       numMap[nums[i]] = i;  // nums[i] sayısının indeksini map'e kaydediyoruz
//     }
    
     //* Bu satıra aslında hiç gelinmemeli çünkü return [numMap[complement]!, i]; kodundaki ! ile her zaman bir çözüm olduğu garantileniyor
//     throw Exception('No solution found');
//   }
// }

