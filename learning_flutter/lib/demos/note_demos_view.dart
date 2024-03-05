import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn_one/101/iamge_learn.dart';

class NoteDemos extends StatelessWidget {
  NoteDemos({
    super.key,
  });

  final _title =
      'Create your first note'; //Text metninden extract local variable ile oluşturdum.
  final _description = 'Add a note' * 8;
  final _create_note = 'Create a note';
  final _import_note = 'Import note';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: ItemsPadding
            .horizontalPadding, //Padding vermek için aşağıda hazırlanan sınıfı kullandık.
        child: Column(
          children: [
            PngImage(
                name: ImageItems()
                    .appleWithBookSecond), //image_learn sayfasındaki PngImage sınıfını kullanarak image ekledim.
            //Başlık için aşağıda _TitleWidget sınıfı tanımladık. ve burada kullandık.
            _TitleWidget(title: _title),
            Padding(
              padding: ItemsPadding
                  .verticalPadding, //ItemsPadding sınıfından hazırlanmış padding verdik.
              child: //Açıklama için aşağıda _SubTitleWidget sınıfı tanımladık. ve burada kullandık.
                  _SubTitleWidget(
                title: _description, //
              ), // Eğer center dışında bir değer vermek istersek textAlign = TextAlign.right gibi bir değer verirsek aşağıdaki constructor ile hazırladığımız defult center değeri yerine burada verilen değeri alacaktır.
            ),
            Spacer(),
            _CreateButton(context),
            TextButton(
              onPressed: () {},
              child: Text(_import_note),
            ),
            SizedBox(
              height: ButtonHeight.buttonNormalHegiht,
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton _CreateButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
        height: ButtonHeight.buttonNormalHegiht,
        child: Center(
          child: Text(
            _create_note, //yukarıdaki lokal değişken ile butona text verdik.
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}







//Center Text Widget
class _SubTitleWidget extends StatelessWidget {
  // Açıklama textinden _SubTitleWidget oluşturarak yarattım. Sthyle ozelliklerini içinde barındırıyor.
  const _SubTitleWidget({
    super.key,
    this.textAlign = TextAlign.center,
    required this.title, //Constructor ile eğer bir Align Parametresi verilmezse default olalrak center değerini almasını belirttik.
  });

  final String title;

  final TextAlign
      textAlign; //textAlign Değişkenine TextAlign sınıfının özelliğini verdik.

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign:
          textAlign, //textAlign değerini yukarıda constructor ile hazırladıktan sonra burada şu şekilde kullandığımız zaman default değer olarak center değerini alacaktır.
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  // Başlık textinden _TitleWidget oluşturarak yarattım. Sthyle ozelliklerini içinde barındırıyor.
  const _TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class ItemsPadding {
  // Sayfada kullanmam için padding sınıfı yazdım yatay ve dikey padding özellikleri oluşturdum.
  static final EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static final EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeight {
  static const double buttonNormalHegiht = 50;
}
