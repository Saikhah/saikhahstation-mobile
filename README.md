1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".

Jawaban:
1. Widget tree adalah struktur hierarki yang menggambarkan bagaimana widget-widget  tersusun di dalam aplikasi Flutter. Setiap widget bisa memiliki satu atau lebih child widget. 
Hubungan parent-child bekerja seperti pohon: widget induk (parent) mengatur tata letak dan perilaku dari widget anak (child) di dalamnya. Misalnya, Scaffold adalah parent dari AppBar, Body, dan Drawer, sementara di dalam Body masih ada widget lain seperti Column, Row, dan Text.
2. 
- MaterialApp → root dari aplikasi, menyediakan tema, routing, dan gaya material design.
- Scaffold → kerangka utama setiap halaman (memiliki AppBar, Drawer, dan Body).
- AppBar → menampilkan judul di bagian atas aplikasi.
- Drawer → navigasi samping yang menghubungkan halaman utama dan halaman tambah produk.
- Column & Row → menyusun widget secara vertikal dan horizontal.
- Text → menampilkan teks di layar.
- ElevatedButton → tombol interaktif seperti All Products, My Products, dan Create Product.
- TextFormField → input teks untuk form tambah produk.
- DropdownButtonFormField → memilih kategori produk dari daftar.
- SwitchListTile → toggle pilihan untuk produk unggulan.
- AlertDialog → pop-up konfirmasi setelah menekan tombol simpan.

3.  MaterialApp berfungsi sebagai entry point aplikasi Flutter dengan menerapkan desain Material Design.
Widget ini sering dijadikan root karena menyediakan:

Tema global (ThemeData)

Navigasi antar halaman (Navigator)

Pengaturan title, home, dan routes aplikasi
Tanpa MaterialApp, banyak widget seperti Scaffold atau AppBar tidak bisa berfungsi dengan gaya material.

4. 
- StatelessWidget: tidak memiliki state yang bisa berubah. Digunakan untuk tampilan statis seperti halaman utama (MyHomePage) atau info card.

- StatefulWidget: memiliki state yang bisa berubah selama aplikasi berjalan. Contohnya ProductFormPage, karena nilai input pengguna seperti nama, harga, dan kategori bisa berubah.

Pilih StatefulWidget kalau UI perlu diperbarui berdasarkan interaksi pengguna.

5. BuildContext adalah objek yang merepresentasikan posisi widget di dalam widget tree. Penting karena:
- Dipakai untuk mengakses theme, media query, atau navigator.
- Diperlukan untuk berpindah halaman (Navigator.push(context, ...)).
Di metode build(), parameter context membantu Flutter tahu di mana widget itu berada dalam tree, agar bisa membangun tampilan yang sesuai.

6. 
- Hot reload: memperbarui kode yang sedang berjalan tanpa kehilangan state. Biasanya dipakai untuk ubah UI atau layout secara cepat.nContoh: ubah warna tombol atau teks tanpa menutup aplikasi.

- Hot restart: me-restart aplikasi dari awal, semua state dan data sementara hilang. Dipakai kalau ubahan ada di bagian awal seperti variabel global, main(), atau struktur widget utama.