import 'package:flutter/material.dart';
import 'package:flutter_notes/core/random_image.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Tile'),
      ),
      body: Column(
        children: [
          ListTile(
            // contentPadding: EdgeInsets.zero, // sağ ve soldan paddinglerini kaldırır
            title: const Text('The Music Name'),
            subtitle: const Text('The musics description is here...'),
            leading: const Icon(Icons.album_outlined, size: 40),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            // dense: true, //kendi paddinglerini kaldırır.
            title: const Text('The Music Name'),
            subtitle: const Text('The musics description is here...'),
            leading: const RandomImage(),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          Card(
            child: ListTile(
              // dense: true, //kendi paddinglerini kaldırır. (Sıkıştırma)
              title: const Text('The Music Name'),
              subtitle: const Text('The musics description is here...'),
              leading: const RandomImage(),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
              // minVerticalPadding: 0,
            ),
          ),
          ListTile(
            title: const RandomImage(),
            // subtitle: const Text('The musics description is here...'),
            leading: const Icon(Icons.chevron_left),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
            // dense: true,
          ),
        ],
      ),
    );
  }
}

//* LitTile özellikleirni  ListTile Theme ile belirleyebilriz.
