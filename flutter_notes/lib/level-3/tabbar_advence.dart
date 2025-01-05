import 'package:flutter/material.dart';
import 'package:flutter_notes/demos/my_collection_demo.dart';
import 'package:flutter_notes/level-1/text_field_learn.dart';
import 'package:flutter_notes/level-3/feed_view.dart';

class TabAdvenceLearn extends StatefulWidget {
  const TabAdvenceLearn({super.key});

  @override
  State<TabAdvenceLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabAdvenceLearn>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  void changePage() {
    _tabController.animateTo(_MyTabViews.home.index);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Learn'),
          //ust nav bar
          // bottom: TabBar(
          //   tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList(),
          // ),
        ),
        body: const TabBarView(children: [
          //! tab barlar ile gecilecek sayfa veya widgetları burada ayarlarız
          FeedView(),
          TextFieldLearn(),
          MyCollectionDemo(),
        ]),
        //
        extendBody: true, // floataction button ile bottomnavbar arasını açar.

        //alt navbar
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          child: TabBar(
              //* diğer bazı özellikler:
              // indicatorColor: ,
              // isScrollable: true,
              // labelColor: ,
              // unselectedLabelColor: ,
              // padding: ,
              // onTap: (value) {},

              // controller: _tabController,
              //şeklinde controller atanarak başka işlemler de yapılabilir.
              //örneğin floataction Buttona basınca controller kullnarak bir sayfaya geri dönmek gibi.
              tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList()),
        ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     // changePage;
        //   },
        //   backgroundColor: Colors.blueAccent,
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      ),
    );
  }
}

enum _MyTabViews { home, login, lists }
