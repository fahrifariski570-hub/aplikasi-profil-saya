import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});
  final List<Map<String,String>>galeri=const[
    {
     "judul": "Gedung perusahaan",
     "gambar": "asset/image/a1.jpg"
    },
    {
     "judul": "Ruang Meeting",
     "gambar": "asset/image/b2.jpg"
    },
    {
     "judul": "Ruang Kantor",
     "gambar": "asset/image/f1.jpg"
    },
    {
     "judul": "Pantry ",
     "gambar": "asset/image/p1.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 17, 0),
      appBar: AppBar(
        title: const Text("Gallery Perusahaan"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 3, 3),
        foregroundColor: const Color.fromARGB(255, 252, 3, 3),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          itemCount: galeri.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)
                        ),
                        child: Image.asset(
                          galeri[index]["gambar"]!,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ),
                      Padding(padding: const EdgeInsets.all(10),
                      child: Text(galeri[index]["judul"]!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16
                        ),
                        ),
                        )
                  ],
                ),

              );
            }
          ),
        ),
    );
  }
}