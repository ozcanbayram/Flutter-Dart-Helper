import 'package:flutter/material.dart';

class PageDemos1 extends StatefulWidget {
  const PageDemos1({super.key});

  @override
  State<PageDemos1> createState() => _PageDemos1State();
}

class _PageDemos1State extends State<PageDemos1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBarTitle(),
        actions: [
          Padding(
            padding: PaddingUtility().paddingAll,
            child: const Icon(
              Icons.menu,
              color: Colors.amber,
            ),
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                BoxUtility(
                  color: Colors.amber,
                  bottomRight: 100,
                  bottomLeft: 0,
                  topLeft: 0,
                  topRight: 0,
                  heigth: 160,
                ),
                BoxUtility(
                  color: Colors.black,
                  bottomLeft: 0,
                  bottomRight: 100,
                  topLeft: 0,
                  topRight: 0,
                  heigth: 150,
                  header: 'Yeni\nşeyler\nizleyin!',
                ),
              ],
            ),
            MyListTile(
              title: 'Filmler',
              subTitle: 'En seveceğiniz filmler burada!',
              iconLeft: Icons.movie,
              iconRight: Icons.chevron_right,
            ),
            MyListTile(
              title: 'Kısa Filmler',
              subTitle: 'Hızlı ve eğlenceli içerikler burada!',
              iconLeft: Icons.run_circle_outlined,
              iconRight: Icons.chevron_right,
            ),
            MyListTile(
              title: 'Diziler',
              subTitle: 'Birbirinden eğlenceli diziler burada!',
              iconLeft: Icons.tv,
              iconRight: Icons.chevron_right,
            ),
            MyListTile(
              title: 'Mini diziler',
              subTitle: 'Kısa sürede büyük heyecan burada!',
              iconLeft: Icons.timelapse,
              iconRight: Icons.chevron_right,
            ),
            MyListTile(
              title: 'Kült Filmler',
              subTitle: 'Her yerde karşınıza çıkabilecek filmler burada!',
              iconLeft: Icons.view_day,
              iconRight: Icons.chevron_right,
            ),
            MyListTile(
              title: 'Ödüllü Filmler',
              subTitle: 'O harika filmler burada!',
              iconLeft: Icons.star,
              iconRight: Icons.chevron_right,
            ),
            MyListTile(
              title: 'Ödüllü Diziler',
              subTitle: 'O harika diziler burada!',
              iconLeft: Icons.star,
              iconRight: Icons.chevron_right,
            ),
            MyListTile(
              title: 'Animasyonlar',
              subTitle: 'Birçok dilde animeler burada!',
              iconLeft: Icons.animation_outlined,
              iconRight: Icons.chevron_right,
            ),
            MyListTile(
              title: 'Çozuklar için',
              subTitle: 'Birbirinden eğlenceli çizgifilmler burada!',
              iconLeft: Icons.child_care,
              iconRight: Icons.chevron_right,
            ),
            MyListTile(
              title: 'WatchHane özel',
              subTitle:
                  'WatchHane oalrak sizin için seçtiğimiz filmler ve diziler burada!',
              iconLeft: Icons.folder_special_outlined,
              iconRight: Icons.chevron_right,
            ),
          ],
        ),
      ),
    );
  }

  Text appBarTitle() {
    return const Text(
      'WatchHane',
      style: TextStyle(
        color: Colors.amber,
        fontWeight: FontWeight.w400,
        letterSpacing: 3,
        fontSize: 25,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.iconLeft,
    required this.iconRight,
  });

  final String title;
  final String subTitle;
  final IconData iconLeft;
  final IconData iconRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingUtility().paddingAll,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        leading: Icon(
          iconLeft,
          size: 50,
          color: Colors.amber,
          weight: 100,
        ),
        trailing: Icon(iconRight, color: Colors.amber, size: 30),
        contentPadding: EdgeInsets.zero,
        onTap: () {},
      ),
    );
  }
}

class BoxUtility extends StatelessWidget {
  const BoxUtility({
    super.key,
    required this.color,
    required this.bottomRight,
    required this.bottomLeft,
    required this.topLeft,
    required this.topRight,
    required this.heigth,
    this.header,
  });

  final Color color;
  final double bottomRight;
  final double bottomLeft;
  final double topLeft;
  final double topRight;
  final double heigth;
  final String? header;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(bottomRight),
          bottomLeft: Radius.circular(bottomLeft),
          topLeft: Radius.circular(topLeft),
          topRight: Radius.circular(topRight)),
      child: Container(
        height: heigth,
        width: MediaQuery.of(context).size.width,
        color: color,
        child: Padding(
          padding: PaddingUtility().paddingAll,
          child: Text(
            header ?? '',
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.amber,
                fontSize: 30,
                letterSpacing: 3),
          ),
        ),
      ),
    );
  }
}

class PaddingUtility {
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 32.0);
  final paddingAll = const EdgeInsets.all(16);
}
