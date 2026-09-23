  import 'package:flutter/material.dart';
  import 'testimoni.dart';
  import 'about_page.dart';
  import 'gallery_page.dart';
  import 'contact_page.dart';


  class MainPage extends StatelessWidget {
    const MainPage({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("CyberHack Company"),
          backgroundColor: const Color.fromARGB(255, 247, 3, 3),
        
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(30),
                color: const Color.fromARGB(255, 7, 7, 7),
                child:  Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                      'asset/image/images.jpg',
                    width: 100,
                    height: 100,
                    fit:BoxFit.cover,
                    ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "CyberHack Company",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],                                                                 
                ),
              ),
              const SizedBox(height: 20),
              //tombol about
              SizedBox(
                  width: double.infinity,
                  child:Padding(
                    padding:const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AboutPage(),  
                        ),
                      );
                    },
                    icon: const Icon(Icons.info,
                    color: Color.fromARGB(255, 255, 0, 0),
                    ),
                    label: const Text("Tentang Perusahaan", 
                    style: TextStyle(
                    color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                  width: double.infinity,
                  child:Padding(
                    padding:const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GalleryPage(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.photo_library,color: Colors.blue,),
                    label: const Text("Gallery perusahaan",
                    style: TextStyle(color: Colors.black),),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                  width: double.infinity,
                  child:Padding(
                    padding:const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ContactPage(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.phone, color: Colors.green,),
                    label: const Text("kontak perusahaan",
                    style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                  width: double.infinity,
                  child:Padding(
                    padding:const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Testimoni(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.security, color: Color.fromARGB(255, 83, 110, 84),),
                    label: const Text("Testimoni",
                    style: TextStyle(color: Colors.black)),
                  ),
                ),
              )
            ],
          ),
        )
      );
    }
  }