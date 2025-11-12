import 'package:flutter/material.dart';
import 'package:saikhahstation/menu.dart';
import 'package:saikhahstation/widgets/product_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Center(
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            onTap: () {
              // ganti route ke halaman utama (replace agar drawer ditutup rapi)
              Navigator.pop(context); // tutup drawer dulu
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (ctx) => MyHomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_box),
            title: const Text('Tambah Produk'),
            onTap: () {
              Navigator.pop(context); // tutup drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (ctx) => const ProductFormPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
