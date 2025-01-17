/*

Soru: Sıralı bir dizideki yinelenen öğeleri kaldırın, böylece her öğe yalnızca bir kez görünür ve yeni uzunluk k döndürülür.
Yerel bir değişken oluşturmadan, aynı dizi içinde giriş dizisini değiştirerek yapmanız gerekir.
Dizinin ilk k elemanı, yeni uzunluk k'ya eşit olmalıdır.
Dizinin ilk k elemanı dışındaki kısmı ne olursa olsun önemli değildir.
Dizinin ilk k elemanı ve yeni uzunluk k'ya eşit olmalıdır.
Diziyi değiştirmek için ekstra dizi veya dizi elemanları kullanmayın.
Örnekler:

 Örnek 1:
Giriş: sayılar = [1,1,2]
Çıktı: 2, sayılar = [1,2,_]
Açıklama: İşleviniz k = 2 döndürmelidir, sayıların ilk iki öğesi sırasıyla 1 ve 2'dir.
Döndürülen k'nin ötesinde ne bıraktığınız önemli değildir (dolayısıyla alt çizgidir).

  Örnek 2:
Giriş: sayılar = [0,0,1,1,1,2,2,3,3,4]
Çıktı: 5, sayılar = [0,1,2,3,4, _, _, _, _, _]
Açıklama: Fonksiyonunuz k = 5 döndürmelidir, sayıların ilk beş elementi sırasıyla 0, 1, 2, 3 ve 4'tür.
Döndürülen k'nin ötesinde ne bıraktığınız önemli değildir (dolayısıyla alt çizgidir).
 */

// bu örnekteki Solution sınıfını oluşturalım:
class Solution {
  int removeDuplicates(List<int> nums) {
    // eğer nums boş ise 0 döndür.
    if (nums.isEmpty) {
      return 0;
    }

    // i ve j değişkenlerini tanımlayalım.
    int i = 0;
    int j = 1;

    // i ve j değişkenlerini kullanarak nums listesindeki elemanları karşılaştıralım.
    while (j < nums.length) {
      if (nums[i] != nums[j]) {
        i++;
        nums[i] = nums[j];
        // eğer nums[i] != nums[j] ise i'yi 1 artır ve nums[i] = nums[j] yap. Bu sayede yinelenen elemanları kaldırmış olacağız.
      }
      j++;
    }

    // i değişkenini 1 artırarak döndürelim.
    return i + 1;
  }
}

void main(List<String> args) {
  //burada kullanalım:
  Solution().removeDuplicates([1, 1, 2]); // 2
  Solution().removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]); // 5
  // bu şekilde kullanarak sonuçları döndürebiliriz.
  //yazdıralım:
  print(Solution().removeDuplicates([1, 1, 2])); // 2
  print(Solution().removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4])); // 5
}

// Şimdi bu sınfta neler yaptıklarımızı açıklayalım:
// 1. Eğer nums boş ise 0 döndür.
// 2. i ve j değişkenlerini tanımla.
// 3. i ve j değişkenlerini kullanarak nums listesindeki elemanları karşılaştır.
// 4. Eğer nums[i] != nums[j] ise i'yi 1 artır ve nums[i] = nums[j] yap.
// 5. j'yi 1 artır.
// 6. i'yi 1 artır ve döndür.
// 7. Bu işlemleri gerçekleştiren bir fonksiyon yazdık.
// 8. Bu fonksiyonu çağırarak sonucu döndürdük.

