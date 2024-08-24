import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // Statik kullanıcı adı ve avatar için değişkenler
    const String userName = 'Kullanıcı Adı';

    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              // gradian renkler buradan ayarlanır.
              Color.fromARGB(255, 255, 217, 0),
              Color(0xffF2B84B),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            // Üst kısımdaki kullanıcı bilgileri ve avatar
            Container(
              padding:
                  const EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
              height: 150,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 36,
                    // backgroundImage: AssetImage(avatarAsset), //Buraya profil fotoğrafı gelir.
                    backgroundColor: Colors.grey[200],
                  ),
                  const SizedBox(width: 16.0),
                  const Expanded(
                    child: Text(
                      userName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pop(); // Drawer'ı kapatmak için
                    },
                  ),
                ],
              ),
            ),
            // Drawer menü öğeleri
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _buildListTile(
                    icon: Icons.person_outline,
                    title: 'Profil',
                    onTap: () {
                    },
                  ),
                  _buildListTile(
                    icon: Icons.shopping_bag_outlined,
                    title: 'Sepetim',
                    onTap: () {
                    },
                  ),
                  _buildListTile(
                    icon: Icons.workspace_premium_outlined,
                    title: 'Premium',
                    onTap: () {
                    },
                  ),
                  _buildListTile(
                    icon: Icons.person_pin_circle_outlined,
                    title: 'Kişiler',
                    onTap: () {
                    },
                  ),
                  _buildListTile(
                    icon: Icons.help_outline,
                    title: 'SSS',
                    onTap: () {
                    },
                  ),
                  _buildListTile(
                    icon: Icons.settings,
                    title: 'Ayarlar',
                    onTap: () {
                    },
                  ),
                  _buildListTile(
                    icon: Icons.logout,
                    title: 'Çıkış Yap',
                    onTap: () {
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Drawer menü öğeleri için yardımcı fonksiyon
  Widget _buildListTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, size: 30, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      tileColor: Colors.black.withOpacity(0.1),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      horizontalTitleGap: 0,
      minVerticalPadding: 12.0,
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
    );
  }
}
