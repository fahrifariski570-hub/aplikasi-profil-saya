import 'package:flutter/material.dart';

class Testimoni extends StatefulWidget {
  const Testimoni({super.key});

  @override
  State<Testimoni> createState() => _TestimoniState();
}

class _TestimoniState extends State<Testimoni> {
  final TextEditingController namaControler = TextEditingController();
  final TextEditingController alamatControler = TextEditingController();
  final TextEditingController umurControler = TextEditingController();
  final TextEditingController nomortelponControler = TextEditingController();
  final TextEditingController testimoniControler = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String nama = '';
  String alamat = '';
  String umur = '';
  String nomortelpon = '';
  String testimoni = '';
  double rating = 5.0;

  void simpanData() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        nama = namaControler.text;
        alamat = alamatControler.text;
        umur = umurControler.text;
        nomortelpon = nomortelponControler.text;
        testimoni = testimoniControler.text;
      });
    }
  }

  void resetData() {
    setState(() {
      nama = '';
      alamat = '';
      umur = '';
      nomortelpon = '';
      testimoni = '';
      rating = 5.0;
    });
    namaControler.clear();
    alamatControler.clear();
    umurControler.clear();
    nomortelponControler.clear();
    testimoniControler.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Testimoni Pelanggan")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: namaControler,
                    decoration: const InputDecoration(
                      labelText: 'Nama',
                      hintText: 'Masukkan nama Anda',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Nama wajib diisi';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: alamatControler,
                    decoration: const InputDecoration(
                      labelText: 'Alamat / Kota',
                      hintText: 'Masukkan alamat Anda',
                      prefixIcon: Icon(Icons.location_on),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Alamat wajib diisi';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: umurControler,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Umur',
                      hintText: 'Masukkan umur Anda',
                      prefixIcon: Icon(Icons.calendar_month),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Umur wajib diisi';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: nomortelponControler,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      labelText: 'Telepon',
                      hintText: 'Nomor telepon',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Nomor telepon wajib diisi';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: testimoniControler,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      labelText: 'Testimoni / Ulasan',
                      hintText: 'Tuliskan pengalaman atau ulasan Anda...',
                      prefixIcon: Icon(Icons.comment),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Testimoni wajib diisi';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Rating: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      ...List.generate(5, (index) {
                        return IconButton(
                          icon: Icon(
                            index < rating ? Icons.star : Icons.star_border,
                            color: Colors.amber,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              rating = index + 1.0;
                            });
                          },
                        );
                      }),
                    ],
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: simpanData,
                      icon: const Icon(Icons.send),
                      label: const Text("Kirim Testimoni"),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: resetData,
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300),
                      icon: const Icon(Icons.refresh, color: Colors.black,),
                      label: const Text("Reset Data", style: TextStyle(color: Colors.black)),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            if (nama.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(thickness: 2),
                  const SizedBox(height: 10),
                  const Text(
                    "Hasil Testimoni Terkirim",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 15),
                  Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const CircleAvatar(
                              child: Icon(Icons.person),
                            ),
                            title: Text(nama, style: const TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text("$alamat • Umur: $umur thn\nTelp: $nomortelpon"),
                          ),
                          const Divider(),
                          Row(
                            children: [
                              ...List.generate(5, (index) {
                                return Icon(
                                  index < rating ? Icons.star : Icons.star_border,
                                  color: Colors.amber,
                                  size: 20,
                                );
                              }),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '"$testimoni"',
                            style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}