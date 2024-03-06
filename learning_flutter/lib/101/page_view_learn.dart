import 'package:flutter/material.dart';
import 'package:flutter_full_learn_one/101/iamge_learn.dart';
import 'package:flutter_full_learn_one/101/scaffold_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(
    viewportFraction: 0.9,
  ); // _pageController ile PageView'i kontrol edebiliriz. Aşağıda /_pageController . ile özelliklere erişebiliriz. onPress içerisine yazarak butonlar ile _pageControl üzerinde işlem yapabiliriz.
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    //bu metot sayfa sayısını Text içinde yazmamızı sağlar
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(_currentPageIndex.toString()),
          ),
          Spacer(),
          FloatingActionButton(
            //sayfanın sağ altına bir buton koyalım ve bu buton yan sayfalara gitmeye yarasın.
            onPressed: () {
              _pageController.previousPage(
                  duration: _DurationUtility._durationFast,
                  curve: Curves.easeInOut);
            },
            child: Icon(Icons.chevron_left),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: FloatingActionButton(
              //sayfanın sağ altına bir buton koyalım ve bu buton yan sayfalara gitmeye yarasın.
              onPressed: () {
                _pageController.nextPage(
                    duration: _DurationUtility._durationFast,
                    curve: Curves
                        .easeInOut); //_pageController'i kullanarak bir sonraki PageView sayfasına geçiş yapmakk için kullanılır.
              },
              child: Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        // padEnds: false, //false olursa ekranın solundan başlar true olursa ortadan başlar.
        controller:
            _pageController, // ekranı küçülterek bir sonrali ekranin önizlemesini gösterir
        onPageChanged:
            _updatePageIndex, //yukarıda tanımladığım fonksiyonla aynı oldukları için buraya yazabilriz.
        //kaydırılabilir ekran
        children: [
          ScaffoldLearnView(), //Örneğin başa bir sayfayı burada göstererek kaydırmalı şekilde başka bir sayfaya geçiş yapabiliriz. (ekran1)
          ImageLearn(), //(ekran2)
          Container(color: Colors.teal),
        ],
      ),
    );
  }
}

//Sayfa geçiş sürelerini aşağıda sınıf olarak tanımlayalım:
class _DurationUtility {
  static const _durationLow = Duration(seconds: 1); //Yavaş geçiş
  static const _durationFast = Duration(milliseconds: 500);
}
