import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_notes/level-1/image_learn.dart';

class NoteAppDemoScreen extends StatelessWidget {
  const NoteAppDemoScreen({super.key});
  final _title = 'Create your first note';
  final _subTitle =
      'Add a note for your new features. Create a note for dont forgat.';
  final _createNote = 'Create a Note';
  final _importNote = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: const _TitleTextWidget(title: 'Notely'),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding:
            ProjectPaddings.horizontalPadding + ProjectPaddings.verticalPadding,
        child: Column(
          children: [
            const Center(
              child: PngImage(imageName: 'ic_book_apple'),
            ),
            _TitleTextWidget(title: _title),
            Padding(
              padding: ProjectPaddings.horizontalPadding +
                  ProjectPaddings.verticalPadding,
              child: _SubtitleTextWidget(
                // textAlign: TextAlign.right, Şeklinde belirtilmediği sürece center olarak tanımlanır.
                subTitle: _subTitle,
              ),
            ),
            const Spacer(), //spacer aralarındaki boşluğu olabildiğince arttırır.
            _CreateButtonWidget(createNote: _createNote),
            _ImportTextButtonWidget(importNote: _importNote),
          ],
        ),
      ),
    );
  }
}

class _ImportTextButtonWidget extends StatelessWidget {
  const _ImportTextButtonWidget({
    required String importNote,
  }) : _importNote = importNote;

  final String _importNote;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          _importNote,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.black),
        ));
  }
}

//! Create butonu için
class _CreateButtonWidget extends StatelessWidget {
  const _CreateButtonWidget({
    required String createNote,
  }) : _createNote = createNote;

  final String _createNote;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
        height: ButtonsHeight.buttonNormalHeight,
        child: Center(
          child: Text(
            _createNote,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}

//! Alt başlık için:
class _SubtitleTextWidget extends StatelessWidget {
  const _SubtitleTextWidget(
      // ignore: unused_element
      {this.textAlign = TextAlign.center,
      required this.subTitle});

  final String subTitle;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: const Color.fromARGB(255, 61, 61, 61),
          fontWeight: FontWeight.w600),
      textAlign: textAlign,
    );
  }
}

//! Başlık için:
class _TitleTextWidget extends StatelessWidget {
  const _TitleTextWidget({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineMedium
          ?.copyWith(color: Colors.black87, fontWeight: FontWeight.w700),
    );
  }
}

class ProjectPaddings {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 16);
}

class ButtonsHeight {
  static const double buttonNormalHeight = 60;
}
