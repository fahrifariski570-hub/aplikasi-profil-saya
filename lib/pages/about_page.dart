import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        title: const Text(
          "Tentang Perusahaan"
        ),
        backgroundColor: const Color.fromARGB(255, 2, 2, 2),
        foregroundColor: const Color.fromARGB(255, 240, 0, 0),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child:Container(
                  width:120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.rectangle,
                  ),
                  child:ClipOval(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                      'asset/image/images.jpg', 
                      fit:BoxFit.contain
                  ),
                 ),
                )
               )
              ),
              SizedBox(height: 25),
              const Center(
                child: Text(
                  "CyberHack Company",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                  ),
                  ),
                  SizedBox(height: 25),
                  Text(
                  "Profil Perusahaan",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 0, 0),
                ),
              ),
              const Divider(),
              const Text(
                " CyberHack Company merupakan perusahaan"
                " keamanan yang bergerak dalam dunia digital.",
                style: TextStyle(
                  fontSize: 16, 
                  height: 1.6,
                ),
              ),
              SizedBox(height: 15),
              const Text("VISI",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
              ),
              const Divider(),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.visibility,
                    color: const Color.fromARGB(255, 255, 30, 0),
                  ),
                  title: Text(
                    "menjaga keamanan Cyber Indonesia"
                    ),
                ),
              ),
              SizedBox(height: 15),
              const Text("MISI",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
              ),
              const Divider(),
              Card(
                child:Column( 
                children: [
                ListTile(
                  leading: Icon(
                    Icons.check_circle,
                    color: const Color.fromARGB(255, 3, 216, 49),
                  ),
                  title: Text(
                    "menjaga keamanan Cyber DUNIA"
                    ),
                ),
                 Divider(),
                 ListTile(
                  leading: Icon(
                    Icons.check_circle,
                    color: const Color.fromARGB(255, 33, 228, 8),
                  ),
                  title: Text(
                    "menjaga keamanan Cyber galaxy"
                    ),
                ),
                Divider(),
                 ListTile(
                  leading: Icon(
                    Icons.check_circle,
                    color: const Color.fromARGB(255, 17, 218, 61),
                  ),
                  title: Text(
                    "menjaga keamanan Cyber Negara"
                    ),
                ),
                ],
              ),  
             ),
           ],
          ),
        ),
      ),
    );
  }
} 