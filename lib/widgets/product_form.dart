import 'package:flutter/material.dart';
import 'left_drawer.dart'; // <-- pastikan ada ini (relative import)
 
class ProductFormPage extends StatefulWidget {
  const ProductFormPage({super.key});
  @override
  State<ProductFormPage> createState() => _ProductFormPageState();
}
 
class _ProductFormPageState extends State<ProductFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  String _price = "";
  String _description = "";
  String _category = "misc";
  String _thumbnail = "";
  bool _isFeatured = false;

  final List<String> _categories = ['misc','apparel','equipment','accessory'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Tambah Produk')),
      drawer: const LeftDrawer(), // sekarang harus dikenali
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // fields...
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                onChanged: (v) => setState(() => _name = v),
                validator: (v) => v == null || v.isEmpty ? 'Name tidak boleh kosong' : null,
              ),
              const SizedBox(height: 12),
              // ... sisanya sebagaimana sudah kamu punya
            ],
          ),
        ),
      ),
    );
  }
}
