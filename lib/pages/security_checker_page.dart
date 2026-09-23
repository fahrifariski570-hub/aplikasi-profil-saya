import 'package:flutter/material.dart';

class SecurityCheckerPage extends StatefulWidget {
  const SecurityCheckerPage({super.key});

  @override
  State<SecurityCheckerPage> createState() => _SecurityCheckerPageState();
}

class _SecurityCheckerPageState extends State<SecurityCheckerPage> {
  final TextEditingController _passwordController = TextEditingController();
  String _strengthText = "Masukkan sandi untuk menguji";
  Color _strengthColor = Colors.grey;
  double _strengthValue = 0.0;
  bool _obscurePassword = true; 

  void _checkPasswordStrength(String password) {
    if (password.isEmpty) {
      setState(() {
        _strengthText = "Masukkan sandi untuk menguji";
        _strengthColor = Colors.grey;
        _strengthValue = 0.0;
      });
      return;
    }

    int score = 0;
    if (password.length >= 8) score++;
    if (password.contains(RegExp(r'[A-Z]'))) score++;
    if (password.contains(RegExp(r'[0-9]'))) score++;
    if (password.contains(RegExp(r'[!@#\$&*~_.,<>]'))) score++;

    setState(() {
      if (score <= 1) {
        _strengthText = "Sangat Lemah (Mudah Diretas)";
        _strengthColor = const Color(0xFFEF4444); 
        _strengthValue = 0.25;
      } else if (score == 2 || score == 3) {
        _strengthText = "Sedang (Tambahkan simbol/angka)";
        _strengthColor = const Color(0xFFF59E0B); 
        _strengthValue = 0.6;
      } else {
        _strengthText = "Kuat (Aman dari Serangan Siber)";
        _strengthColor = const Color(0xFF10B981); 
        _strengthValue = 1.0;
      }
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      appBar: AppBar(
        title: const Text(
          "Simulasi Cek Sandi",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF141414),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Uji Kekuatan Sandi Anda",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFEF4444),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Simulasikan ketahanan sandi akun Anda terhadap ancaman peretasan otomatis.",
              style: TextStyle(fontSize: 14, color: Color(0xFF9CA3AF)),
            ),
            const SizedBox(height: 25),
            TextField(
              controller: _passwordController,
              onChanged: _checkPasswordStrength,
              obscureText: _obscurePassword,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Ketik Sandi Di Sini",
                labelStyle: const TextStyle(color: Color(0xFF9CA3AF)),
                filled: true,
                fillColor: const Color(0xFF141414),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color(0xFF334155)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color(0xFFEF4444), width: 2),
                ),
                prefixIcon: const Icon(Icons.lock_outline, color: Color(0xFFEF4444)),

                suffixIcon: IconButton(
                icon: Icon(
                  _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  color: const Color(0xFF9CA3AF),
                ),
                onPressed: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword; 
                  }
                  );
                 },
                ),
              ),
            ),
            const SizedBox(height: 25),
            LinearProgressIndicator(
              value: _strengthValue,
              backgroundColor: const Color(0xFF141414),
              color: _strengthColor,
              minHeight: 8,
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Text(
                  "Status: ",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Text(
                    _strengthText,
                    style: TextStyle(
                      color: _strengthColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}