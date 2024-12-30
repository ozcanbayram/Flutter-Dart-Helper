//* Bu soruda verilen biribirinden farklı iki listeyi birleştirme işlemi yapılacak.
//* Listede int veriler olacak.
//* iki listedeki sayılar küçükten büyüğe sıralanmış şekilde yeni bir liste oluşturulacak.
//* Eğer listeler boş ise liste boş dönecek.
//* Örneğin:
//? Input: list1 = [1,2,4], list2 = [1,3,4]
//? Output: [1,1,2,3,4,4]

//* tek bağlantılı listenin tanımı:
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    //* Eğer listeler boş ise [] dönecek.
    if (list1 == null && list2 == null) {
      return null;
    }

    //* Eğer listelerden biri boş ise diğer liste dönecek.
    if (list1 == null) {
      return list2;
    }

    if (list2 == null) {
      return list1;
    }

    //* listelerdeki sayılar küçükten büyüğe sıralanacak. ve yeni bir liste oluşturulacak.

    ListNode? result;
    if (list1.val < list2.val) {
      result = list1;
      result.next = mergeTwoLists(list1.next, list2);
    } else {
      result = list2;
      result.next = mergeTwoLists(list1, list2.next);
    }
    return result;

    //? bu kodu tek tek açıklayalım:

    //* 1. Eğer list1'in ilk elemanı list2'nin ilk elemanından küçükse,
    //* list1'in ilk elemanını result'a ata ve list1'in bir sonraki elemanını list1'in bir sonraki elemanı
    //* ve list2'nin ilk elemanı ile tekrar çağır.

    //* 2. Eğer list2'nin ilk elemanı list1'in ilk elemanından küçükse,
    //* list2'nin ilk elemanını result'a ata ve list2'nin bir sonraki elemanını list2'nin bir sonraki elemanı
    //* ve list1'in ilk elemanı ile tekrar çağır.

    //* 3. Eğer list1 ve list2'nin ilk elemanları eşitse,
    //* list1'in ilk elemanını result'a ata ve list1'in bir sonraki elemanını list1'in bir sonraki elemanı
    //* ve list2'nin bir sonraki elemanı ile tekrar çağır.

    //* 4. Eğer list1 ve list2'nin biri boş ise diğer listeyi döndür.

    //* 5. Eğer list1 ve list2 boş ise null döndür.
  }
}

void main(List<String> args) {
  // ListNode sınfından türemeiş bir sayısal liste oluşturalım
  ListNode list1 = ListNode(1, ListNode(2, ListNode(4)));
  ListNode list2 = ListNode(1, ListNode(3, ListNode(4)));

  Solution solution = Solution();
  ListNode? result = solution.mergeTwoLists(list1, list2);
  while (result != null) {
    print(result.val);
    result = result.next;
  }

  //Bağlı liste oluşşturma: ListNode lsit3 = ListNode(2, ListNode(1, ListNode(5)));
}

//! Araştırılabilecek Başlıklar
//* İngilizce
// Data Structures
// Linked Lists
// Types of Linked Lists (Singly, Doubly, Circular)
// Linked List Operations (Insertion, Deletion, Traversal)
// Comparison of Arrays and Linked Lists
// Common Data Structures in Computer Science
// Introduction to Data Structures
// Data Structures and Algorithms
//* Türkçe
// Veri Yapıları
// Bağlı Listeler
// Bağlı Liste Türleri (Tek Yönlü, Çift Yönlü, Dairesel)
// Bağlı Liste İşlemleri (Ekleme, Silme, Gezinme)
// Diziler ve Bağlı Listelerin Karşılaştırılması
// Bilgisayar Biliminde Yaygın Veri Yapıları
// Veri Yapılarına Giriş
// Veri Yapıları ve Algoritmalar
