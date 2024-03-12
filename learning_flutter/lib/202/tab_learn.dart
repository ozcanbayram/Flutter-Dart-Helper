import 'package:flutter/material.dart';

import '../demos/audio_book_demos.dart';
import '../demos/chats_screen_demos.dart';
import '../demos/my_collections_demos.dart';
import '../demos/note_demos_view.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  //with TickerProviderStateMixin ile TabControlleri kıllanabildik.

  //TabController için bir değişken tanımlayalım.
  late final TabController _tabController;

  //notchMargin değerini burada belirleyelim:
  final double _notchMargin = 10;

  //init state içerisinde _tabController'i kullanalım:
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
    // yukarıda with TickerProviderStateMixi yazarak this kullanabildik.
  }

  @override
  Widget build(BuildContext context) {
    //TabBar kullanacağımız zaman alışık olduğumuz Scaffold'u return etme işlemini değil aşağıdaki işlemi yaparız: Scaffold'u DefaultTabController'in içerisinde child olarak yazarız.
    // length ile kaç tane bölme olacağını belirtiriz.
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        //Bu tabBar'ı aşağıya ya da yukarıya koymak için appBar ya da BttomNavigationBar kullanabiliriz.
        // appBar: AppBar(
        //   bottom: TabBar(
        //     // controller: _tabController, //TabController
        //     tabs: [
        //       Text('Page1 '),
        //       Text('Page 2'),
        //     ],
        //   ),
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_MyTabViews.PROFILE.index);
          },
          backgroundColor: Colors.amber,
          child: const Icon(
            Icons.person,
            size: 35,
          ),
        ),
        //Float butonu ortaya nokta şeklinde ekler.
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        //arkaplanı transparan yapar yuvarlak için etrafı oyulmuş gibi görünür.
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          color: Colors.amber,
          //Float buton için etrafında boşluk bırakır ve buraya oturacaktır.
          notchMargin: _notchMargin,
          //Float butona göre bottomNavigationBar'ı keser. içini açar
          // shape: const CircularNotchedRectangle(), //Temalardan verdik burada yazmaya gerek kalmadı.
          height: 100,
          child: _myTabView(), //metot
        ),
        body: _tabBarView(), //metot
      ),
    );
  }

  TabBar _myTabView() {
    //Extract metot ile ayrıldı
    return TabBar(
      //Aktif sayfayı gösteren çubuk rengi
      indicatorColor: Colors.white,
      //isScrollable: true, // İtemleri sıkıştırıp yana kaydırılabilir yapar
      labelColor: Colors.white, //yazı rengi
      unselectedLabelColor: Colors.black, //seçili olmayan label rengi
      padding: EdgeInsets.zero,
      onTap: (int index) {},
      controller: _tabController, //TabController
      tabs: _MyTabViews.values
          .map((e) => Tab(
              text:
                  '${e.name}')) //_MyTabViews sayfasındaki isimleri bir map haline getirdik ve isimlerini  buraya çağırdık.
          .toList(),
    );
  }

  TabBarView _tabBarView() {
    //Extract metot ile ayrıldı
    return TabBarView(
        //physics: const NeverScrollableScrollPhysics(),//Ekranı kaydırarak geçiş yapmayı engeller.
        controller: _tabController,
        children: [
          AudioBookDemos(),
          NoteDemos(),
          ChatsScreen(),
          MyCollectionsDemos(),
        ]);
  }
}
//TabBar Temasını main.dart'daki Theme ile de belirtebiliriz.
//BottomAppBar Temasını main.dart'daki Theme ile de belirtebiliriz.

//Daha ileri seviyede yazmak için aşağıda bir enum tanımlayıp içerisine BottomAppBar'da olmasını istediğimiz sayfaları yazalım. daha sonra TabBar için length özelliğine buradaki enum sınıfın değer uzunluğunu verelim:
enum _MyTabViews { PROFILE, NOTES, CHAT, HOME }

//Bu isimlere özel buton vs... özellikleri verebilmek için extension ile _MyTabViews sınıfına güç kazandırmalıyız.
extension _MyTabViewExtension on _MyTabViews {
  //Burada _MyTabViews klasına özellik yazacağız
}
