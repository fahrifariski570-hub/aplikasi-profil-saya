import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  Future<void>_openinstagram() async{
    final Uri url=Uri.parse(
      "https://www.instagram.com/smkn64jakarta",
    );
    await launchUrl(
      url, mode: LaunchMode.externalApplication,
    );
  }

  Future<void>_openyoutube() async{
    final Uri url=Uri.parse(
     "https://www.youtube.com/@smkn64jakarta22"
    );
    await launchUrl(
      url, mode: LaunchMode.externalApplication,
    );
  }
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("kontak perusahaan"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 247, 1, 1),
        foregroundColor: const Color.fromARGB(255, 15, 15, 15),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              elevation: 5,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.location_on,
                    color: Color.fromARGB(255, 238, 4, 4),
                    ),
                    title: const Text("Alamat Perusahaan"),
                    subtitle: const Text(
                      "JL. mpok nori kramat jati cipayung rt 001 rw 002 jakarta timur indonesia"
                    ),
                  ),
                  const Divider(
                    color: Colors.amber
                  ),
                   ListTile(
                    leading: const Icon(Icons.phone,
                    color: Color.fromARGB(255, 1, 116, 248),
                    ),
                    title: const Text("Nomor Telepon"),
                    subtitle: const Text(
                      "0899-7485-2312"
                    ),
  
                  ),
                  const Divider(
                    color: Colors.amber,
                  ),
                   ListTile(
                    leading: const Icon(Icons.email,
                    color: Color.fromARGB(255, 3, 240, 35),
                    ),
                    title: const Text("Gmail"),
                    subtitle: const Text(
                      "CyberHack@gmail.com"
                    ),
                    
                  ),

                  const Divider(
                    color: Colors.amber,
                  ),
                   ListTile(
                    leading: const FaIcon(FontAwesomeIcons.instagram,
                    color: Color.fromARGB(255, 234, 7, 255),
                    ),
                    title: const Text("Instagram"),
                    subtitle: const Text(
                      "@cyberhack"
                    ),
                    onTap: _openinstagram
                  ),

                  const Divider(
                    color: Colors.amber,
                  ),
                   ListTile(
                    leading: const FaIcon(FontAwesomeIcons.youtube,
                    color: Color.fromARGB(255, 255, 7, 7),
                    ),
                    title: const Text("YOUTUBE"),
                    subtitle: const Text(
                      "@cyberhack"
                    ),
                    onTap: _openyoutube
                  ),

                  const Divider(
                    color: Colors.amber,
                  ),
                   ListTile(
                    leading: const Icon(Icons.web,
                    color: Colors.amber,
                    ),
                    title: const Text("Website Perusahaan"),
                    subtitle: const Text(
                      "www.smkn64-jkt.sch.id"
                    ),
                    onTap: ()async{
                      final url=Uri.parse("https://smkn64-jkt.sch.id/read/2/profil",
                      );
                      await launchUrl(url, mode: LaunchMode.externalApplication,);
                    }
                  ),
                ],
              ),
            )
          ],
        ),),
      ),
    );
  }
}