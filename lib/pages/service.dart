import 'package:flutter/material.dart';

class Service extends StatelessWidget {
  const Service({super.key});

  final List<Map<String, String>> galeri = const [
    {
      "tag": "PENTEST",
      "judul": "Uji Penetrasi & Kerentanan",
      "deskripsi":
          "Simulasi serangan siber untuk menemukan celah keamanan sebelum dimanfaatkan peretas.",
      "gambar": "asset/image/s1.jpg"
    },

    {
      "tag": "SOC 24/7",
      "judul": "Keamanan Terkelola (MSSP)",
      "deskripsi":
          "Pemantauan & perlindungan ancaman sistem secara real-time sepanjang waktu.",
      "gambar": "asset/image/s2.jpg"
    },
    {
      "tag": "RESPONSE",
      "judul": "Tanggap Insiden & Pemulihan",
      "deskripsi":
          "Penanganan cepat darurat dan pemulihan data saat sistem Anda terkena serangan.",
      "gambar": "asset/image/s3.jpg"
    },
    
    {
      "tag": "AUDIT",
      "judul": "Kepatuhan & Audit Keamanan",
      "deskripsi":
          "Memastikan standar regulasi keamanan data industri & internasional terpenuhi.",
      "gambar": "asset/image/s4.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090A0F), 
      appBar: AppBar(
        title: const Text(
          "LAYANAN SERVICES",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            letterSpacing: 2.0,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF0D0E15),
        foregroundColor: const Color(0xFFFF2A2A),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2.0),
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFF2A2A),
                  blurRadius: 8,
                  spreadRadius: 1,
                )
              ],
              color: Color(0xFFFF2A2A),
            ),
            height: 2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
        child: GridView.builder(
          itemCount: galeri.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
            childAspectRatio: 0.62, 
          ),
          itemBuilder: (context, index) {
            final item = galeri[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFFF2A2A),
                    blurRadius: 12,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Card(
                color: const Color(0xFF13151F),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(
                    color: const Color(0xFFFF2A2A),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18),
                          ),
                          child: SizedBox(
                            height: 105,
                            child: Image.asset(
                              item["gambar"]!,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: const Color(0xFF1A1D2B),
                                  child: const Icon(
                                    Icons.shield_outlined,
                                    color: Color(0xFFFF2A2A),
                                    size: 40,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  const Color(0xFF13151F),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFF2A2A),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              item["tag"]!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  item["judul"]!,
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    height: 1.2,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  item["deskripsi"]!,
                                  textAlign: TextAlign.center,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFFA0A5B5),
                                    height: 1.3,
                                  ),
                                ),
                              ],
                            ),
                            
                            InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 6),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFF2A2A),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: const Color(0xFFFF2A2A),
                                    width: 0.8,
                                  ),
                                ),
                                
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Detail", 
                                      style: TextStyle(
                                        color: Colors.white, 
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 10,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}