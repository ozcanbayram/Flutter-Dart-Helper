part of './part_of_learn.dart';

// part of yöntemi kullanılırken importlar ana sayfada yapılır. yani bu widgetin kullanılacağı sayfada import edilir.
// part of ile ayrı dosyada tanımlanan bir widgetin özelliklerini bu şekilde kullanabiliriz.
// private bir widget oluşturmak için bu yöntemi kullanabiliriz.
// bu sayede kodumuz daha düzenli ve okunabilir olacaktır. iki dosya arasında bağlantıyı sağlamış oluruz.

class _PartOfAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _PartOfAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Part Of Learn'),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
