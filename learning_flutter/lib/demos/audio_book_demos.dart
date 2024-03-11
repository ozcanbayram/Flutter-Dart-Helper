import 'package:flutter/material.dart';

class AudioBookDemos extends StatefulWidget {
  const AudioBookDemos({super.key});

  @override
  State<AudioBookDemos> createState() => _AudioBookDemosState();
}

class _AudioBookDemosState extends State<AudioBookDemos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('AudioBook'),
        toolbarTextStyle: const TextStyle(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 245, 224, 231),
        leading: const Icon(
          Icons.menu_rounded,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 150,
              color: const Color.fromARGB(255, 245, 224, 231),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 75),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(75.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Image.network(
                        'https://a.storyblok.com/f/191576/1200x800/faa88c639f/round_profil_picture_before_.webp',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 240.0),
                    child: Column(
                      children: [
                        MainTitle(mainTitle: 'Jessica Palmer'),
                        Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              NumberTitle(numberTitle: '15'),
                              NumberTitle(numberTitle: '05'),
                              NumberTitle(numberTitle: '10'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 325.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SubTitleTexti(subTitle: 'Read Books'),
                  SubTitleTexti(subTitle: 'Favourite'),
                  SubTitleTexti(subTitle: 'Total Reviews'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 360.0, left: 16.0, right: 16.0),
              child: Divider(
                height: 10,
                color: Colors.grey,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 390.0, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainTitle(mainTitle: 'Your BookShelf'),
                  SubTitleTexti(subTitle: 'See all')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450.0),
              child: SizedBox(
                height: 325,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SizedBox(
                      width: 200,
                      child: CardUtility(
                          image:
                              'https://cdn.akakce.com/-/olasiliksiz-adam-fawer-z.jpg',
                          bookName: 'Olasılıksız',
                          writerName: 'Adam Fawer'),
                    ),
                    CardUtility(
                        image:
                            'https://img.kitapyurdu.com/v1/getImage/fn:11781462/wh:true/wi:800',
                        bookName: 'Empati',
                        writerName: 'Adam Fawer'),
                    CardUtility(
                        image:
                            'https://img.kitapyurdu.com/v1/getImage/fn:11752841/wh:true/wi:500',
                        bookName: 'OZ',
                        writerName: 'Adam Fawer'),
                    CardUtility(
                        image:
                            'https://cdn.dsmcdn.com/ty11/product/media/images/20201021/16/18435223/92670323/1/1_org_zoom.jpg',
                        bookName: 'Sefiller',
                        writerName: 'Victor Hugo'),
                    CardUtility(
                        image:
                            'https://www.iskultur.com.tr/webp/2013/03/kumarbaz-4.jpg',
                        bookName: 'Kumarbaz',
                        writerName: 'Fyodor Dostoyevski'),
                    CardUtility(
                        image:
                            'https://i.dr.com.tr/cache/500x400-0/originals/0000000691986-1.jpg',
                        bookName: 'Siyah Lale',
                        writerName: 'Alexandre Dumas'),
                    CardUtility(
                        image:
                            'https://cdn.dsmcdn.com/ty103/product/media/images/20210418/15/81056590/14458928/1/1_org_zoom.jpg',
                        bookName: 'Çırak',
                        writerName: 'Tess Garetsen'),
                    CardUtility(
                        image:
                            'https://www.dogankitap.com.tr/t/?src=%2Ffiles%2Fkitaplar%2Fimg%2Fcerrah-kapak.jpg&w=400&zc=1',
                        bookName: 'Cerrah',
                        writerName: 'Tess Garetsen'),
                    CardUtility(
                        image:
                            'https://img-lcwaikiki.mncdn.com/mnresize/1020/1360/mpsellerportal/v1/img_101953167v1_ad264eed-428f-48a9-b06b-160a6c3c51e1.jpg',
                        bookName: 'Rehine',
                        writerName: 'Tess Garetsen'),
                    CardUtility(
                        image:
                            'https://www.dogankitap.com.tr/files/kitaplar/img/dinle-beni-on-kapak-result.jpg',
                        bookName: 'Dinle Beni',
                        writerName: 'Tess Garetsen'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 800.0),
              child: Container(
                height: 500,
                color: Color.fromARGB(255, 245, 224, 231),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardUtility extends StatelessWidget {
  const CardUtility({
    super.key,
    required this.image,
    required this.bookName,
    required this.writerName,
  });

  final String image;
  final String bookName;
  final String writerName;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              image,
              width: 200,
              height: 200,
            ),
          ),
          Text(
            bookName!,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          Text(
            writerName!,
            style: const TextStyle(color: Colors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.shopping_cart))
            ],
          )
        ],
      ),
    );
  }
}

// Extraxt widgets and Methods:

class MainTitle extends StatelessWidget {
  const MainTitle({
    super.key,
    required this.mainTitle,
  });
  final String mainTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      mainTitle,
      style: const TextStyle(
          color: Colors.black,
          letterSpacing: 1,
          fontSize: 25,
          fontWeight: FontWeight.w400),
    );
  }
}

class NumberTitle extends StatelessWidget {
  const NumberTitle({
    super.key,
    required this.numberTitle,
  });
  final String numberTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      numberTitle,
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
    );
  }
}

class SubTitleTexti extends StatelessWidget {
  const SubTitleTexti({
    super.key,
    required this.subTitle,
  });

  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: const TextStyle(
          fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),
    );
  }
}
