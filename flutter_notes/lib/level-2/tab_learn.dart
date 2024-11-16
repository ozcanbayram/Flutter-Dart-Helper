import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Learn'),
          //ust nav bar
          bottom: const TabBar(tabs: [
            Tab(text: 'page 1'),
            Tab(text: 'page 2'),
          ]),
        ),
        body: TabBarView(children: [
          //! tab barlar ile gecilecek sayfa veya widgetları burada ayarlarız
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
        ]),
        //
        extendBody: true, // floataction button ile bottomnavbar arasını açar.

        //alt navbar
        bottomNavigationBar: const BottomAppBar(
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          child: TabBar(
              //* diğer bazı özellikler:
              // indicatorColor: ,
              // isScrollable: true,
              // labelColor: ,
              // unselectedLabelColor: ,
              // padding: ,
              // onTap: (value) {},
              
              // controller: _tabController, şeklinde controller atanarak başka işlemler de yapılabilir.
              //örneğin floataction Buttona basınca controller kullnarak bir sayfaya geri dönmek gibi.
              tabs: [
                Tab(text: 'page 1'),
                Tab(text: 'page 2'),
              ]),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blueAccent,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      ),
    );
  }
}
