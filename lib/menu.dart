import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final String nama = "Saikhah Ummu Anja Amalia"; // nama
  final String npm = "2406436045"; // npm
  final String kelas = "D"; // kelas

  @override
  Widget build(BuildContext context) {
    // scaffold dengan AppBar dan body
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Football News',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // isi utama disusun vertikal
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // info cards (NPM / Name / Class)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: nama),
                InfoCard(title: 'Class', content: kelas),
              ],
            ),

            const SizedBox(height: 16.0),

            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(
                'Selamat datang di Football News',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),

            // Tiga tombol sesuai checklist, susun horizontal (jika layar sempit akan wrap ke bawah)
            Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: [
                // All Products (biru)
                SizedBox(
                  width: 180,
                  height: 90,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // warna biru
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          const SnackBar(
                            content: Text("Kamu telah menekan tombol All Products"),
                          ),
                        );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.list, color: Colors.white, size: 28),
                        SizedBox(height: 6),
                        Text('All Products',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),

                // My Products (hijau)
                SizedBox(
                  width: 180,
                  height: 90,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // warna hijau
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          const SnackBar(
                            content: Text("Kamu telah menekan tombol My Products"),
                          ),
                        );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.person, color: Colors.white, size: 28),
                        SizedBox(height: 6),
                        Text('My Products',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),

                // Create Product (merah)
                SizedBox(
                  width: 180,
                  height: 90,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // warna merah
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          const SnackBar(
                            content: Text("Kamu telah menekan tombol Create Product"),
                          ),
                        );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.add_box, color: Colors.white, size: 28),
                        SizedBox(height: 6),
                        Text('Create Product',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 18.0),

            // Jika ingin tambahan: grid kecil menampilkan item lain (contoh seperti tutorial)
            // Di sini kita siapkan placeholder grid kecil yang tidak konflik dengan tombol di atas.
            const Expanded(
              child: Center(
                child: Text(
                  'Tambahan konten / news dapat ditambahkan di sini',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}
