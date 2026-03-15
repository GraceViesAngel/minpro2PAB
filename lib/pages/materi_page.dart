import 'dart:ui';
import 'package:flutter/material.dart';
import 'quiz_page.dart';

class MateriPage extends StatelessWidget {
  final String kategori;

  const MateriPage({super.key, required this.kategori});

  String getMateri() {
    if (kategori == "Etika Digital") {
      return "Netiket adalah aturan sopan santun saat menggunakan internet. "
          "Pengguna internet harus berkomunikasi dengan sopan, tidak menghina orang lain, "
          "dan tidak menyebarkan hoaks.";
    }

    if (kategori == "Keamanan Digital") {
      return "Keamanan digital adalah cara melindungi akun, data, dan perangkat dari "
          "akses yang tidak sah. Gunakan password yang kuat, jangan sembarang klik link "
          "mencurigakan, dan jangan membagikan informasi pribadi kepada orang lain.";
    }

    return "Data pribadi adalah informasi yang dapat mengidentifikasi seseorang seperti "
        "nama lengkap, alamat rumah, nomor telepon, dan email. Data ini harus dijaga "
        "agar tidak disalahgunakan oleh pihak yang tidak bertanggung jawab.";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe7e3ea),

      body: Center(
        child: SizedBox(
          width: 380,
          height: 780,

          child: Scaffold(
            backgroundColor: Colors.transparent,

            body: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    "assets/images/materi.png",
                    fit: BoxFit.cover,
                  ),
                ),

                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),

                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),

                        const SizedBox(height: 10),

                        Text(
                          kategori,
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff5A4032),
                          ),
                        ),

                        const SizedBox(height: 20),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),

                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

                            child: Container(
                              padding: const EdgeInsets.all(20),

                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(20),

                                border: Border.all(
                                  color: Colors.white.withOpacity(0.4),
                                ),
                              ),

                              child: Text(
                                getMateri(),

                                style: const TextStyle(
                                  fontSize: 16,
                                  height: 1.5,
                                  color: Color(0xff4E3A2E),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const Spacer(),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => QuizPage(kategori: kategori),
                              ),
                            );
                          },

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),

                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),

                              child: Container(
                                height: 60,
                                alignment: Alignment.center,

                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(40),

                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.4),
                                  ),
                                ),

                                child: const Text(
                                  "Mulai Kuis",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff5A4032),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
