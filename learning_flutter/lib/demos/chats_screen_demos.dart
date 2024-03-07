import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        toolbarHeight: 75,
        backgroundColor: Colors.white,
        title: Padding(
          padding: ProjectPadding().paddingAll,
          child: const Text(
            'Chats',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: ProjectPadding().paddingAll,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: const Color.fromARGB(255, 67, 66, 66),
              iconSize: 30,
            ),
          ),
        ],
      ),
      // Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: ProjectContainerColors().colorWhite,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SohbetButton(),
                  KisilerButton(),
                ],
              ),
            ),
            Container(
              color: ProjectContainerColors().colorLight,
              child: const ProjectListTile(
                  title: 'Erdem', subTitle: 'Hakkimda yazisi...'),
            ),
            Container(
              color: ProjectContainerColors().colorDark,
              child: const ProjectListTile(
                  title: 'Ozcan', subTitle: 'Ozcan Bayram hakkında...'),
            ),
            Container(
              color: ProjectContainerColors().colorLight,
              child: const ProjectListTile(
                  title: 'Mete', subTitle: 'Mete hakkında...'),
            ),
            Container(
              color: ProjectContainerColors().colorDark,
              child: const ProjectListTile(
                  title: 'Deniz', subTitle: 'Deniz hakkında...'),
            ),
            Container(
              color: ProjectContainerColors().colorLight,
              child: const ProjectListTile(
                  title: 'Erdem', subTitle: 'Hakkimda yazisi...'),
            ),
            Container(
              color: ProjectContainerColors().colorDark,
              child: const ProjectListTile(
                  title: 'Ozcan', subTitle: 'Ozcan Bayram hakkında...'),
            ),
            Container(
              color: ProjectContainerColors().colorLight,
              child: const ProjectListTile(
                  title: 'Mete', subTitle: 'Mete hakkında...'),
            ),
            Container(
              color: ProjectContainerColors().colorDark,
              child: const ProjectListTile(
                  title: 'Deniz', subTitle: 'Deniz hakkında...'),
            ),
            Container(
              color: ProjectContainerColors().colorLight,
              child: const ProjectListTile(
                  title: 'Erdem', subTitle: 'Hakkimda yazisi...'),
            ),
            Container(
              color: ProjectContainerColors().colorDark,
              child: const ProjectListTile(
                  title: 'Ozcan', subTitle: 'Ozcan Bayram hakkında...'),
            ),
            Container(
              color: ProjectContainerColors().colorLight,
              child: const ProjectListTile(
                  title: 'Mete', subTitle: 'Mete hakkında...'),
            ),
            Container(
              color: ProjectContainerColors().colorDark,
              child: const ProjectListTile(
                  title: 'Deniz', subTitle: 'Deniz hakkında...'),
            ),
            Container(
              color: ProjectContainerColors().colorLight,
              child: const ProjectListTile(
                  title: 'Erdem', subTitle: 'Hakkimda yazisi...'),
            ),
            Container(
              color: ProjectContainerColors().colorDark,
              child: const ProjectListTile(
                  title: 'Ozcan', subTitle: 'Ozcan Bayram hakkında...'),
            ),
            Container(
              color: ProjectContainerColors().colorLight,
              child: const ProjectListTile(
                  title: 'Mete', subTitle: 'Mete hakkında...'),
            ),
            Container(
              color: ProjectContainerColors().colorDark,
              child: const ProjectListTile(
                  title: 'Deniz', subTitle: 'Deniz hakkında...'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(onTap: (value) {}, items: const [
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Mesajlar'),
        BottomNavigationBarItem(
            icon: Icon(Icons.phone_enabled), label: 'Aramalar'),
      ]),
    );
  }
}

class KisilerButton extends StatelessWidget {
  const KisilerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding().paddingLeft,
      child: ElevatedButton(
        onPressed: () {},
        child: const ButtonsText(buttonsTitle: 'Kişiler'),
        style: ElevatedButton.styleFrom(
            backgroundColor: ProjectContainerColors().colorButton),
      ),
    );
  }
}

class SohbetButton extends StatelessWidget {
  const SohbetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const ButtonsText(buttonsTitle: 'Sohbet'),
      style: ElevatedButton.styleFrom(
          backgroundColor: ProjectContainerColors().colorButton),
    );
  }
}

class ButtonsText extends StatefulWidget {
  const ButtonsText({
    super.key,
    required this.buttonsTitle,
  });
  final String buttonsTitle;

  @override
  State<ButtonsText> createState() => _ButtonsTextState();
}

class _ButtonsTextState extends State<ButtonsText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.buttonsTitle);
  }
}

class ProjectListTile extends StatefulWidget {
  final String title;
  final String subTitle;
  const ProjectListTile({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  State<ProjectListTile> createState() => _ProjectListTileState();
}

class _ProjectListTileState extends State<ProjectListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(
        widget.title,
        style: const TextStyle(fontSize: 20),
      ),
      subtitle: Text(
        widget.subTitle,
        style: const TextStyle(fontSize: 15),
      ),
      leading: Padding(
        padding: ProjectPadding().paddingLeft,
        child: const Icon(
          Icons.person,
          size: 50,
        ),
      ),
      trailing: Padding(
        padding: ProjectPadding().paddingRight,
        child: const Icon(Icons.chevron_right),
      ),
    );
  }
}

class ProjectPadding {
  final paddingLeft = const EdgeInsets.only(left: 20);
  final paddingRight = const EdgeInsets.only(right: 20);
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 10);
  final paddingAll = const EdgeInsets.all(10);
}

class ProjectContainerColors {
  Color colorLight = const Color.fromARGB(255, 230, 241, 241);
  Color colorDark = const Color.fromARGB(255, 220, 227, 235);
  Color colorButton = Colors.blueAccent;
  Color colorWhite = Colors.white;
}

class ProjectContainerHeight {
  final double height = 100;
}
