import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* Scaffold -> Flutter da oluşturulan uygulamanın iskeletidir.
      //* Widgetları bu iskelet üzerinde konumlandırırız. Örneğin appBar'ı bu sayfada Scaffold içerisine ekleyince,
      //* AppBar nerede durması gerektiğini Scaffold iskeletinin yapısı sayesinde bilir.

      //? Scaffold'un bazı özellikleri:
      backgroundColor: const Color.fromARGB(255, 30, 29, 29),

      //? scaffold içerisine yazılan iskelet parçaları gibi düşünebileceğimiz widgetlar:
      //* AppBar -> Uygulamanın başlığının vb... olan en üstteki bar kısmı. kendi içerisinde kısımları vardır (action[sağ kısım] vb..)
      //* body -> gövde, uygulamanın içeriklerinin olduğu, widgetların yazıldığı eklendiği kısım.
      //* bottomNavigationBar -> Ekranın en altındaki navigasyon ögelerinin olduğu kısım.
      //* Örneğin instagramda ekranın altındaki arama, profil, ana sayfa vb... butonların olduğu kısım
      //* FloatActionButton -> Ekrana default olarak sağ alt köşeye (Konumu değiştirilebilir.) eklenen buton.
      //* Drawer -> menü için kullanılır, appBarın sol üstüne yerleştirilir.

      //? Yukarıdakilerin yazılmış kodları:

      appBar: AppBar(
        title: const Center(child: Text('(Scaffold) App Bar')),
      ),

      body: const Center(child: Text('Body (Gövede)')),

      //* Aşağıdaki bottomNavBarı container ya da sizedBox gibi widgetlar ile sarmalayabiliriz:
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),

      drawer: const Drawer(),
      // Kendi içeirsinde bir çok özelliğe sahiptir. (açıklık kapalılık durumları vb...) Ayrı olarak ele alınacak bir widgettir.

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              //! hazır bir widgettir belirlenen sayfa ya da widgeti açar. örneğin container.
              context: context,
              builder: (context) => Container(
                    height: 250,
                    color: Colors.amber,
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // centralDocked ,centralFloat... gibi bir çok konum verilebilir.
    );
  }
}
