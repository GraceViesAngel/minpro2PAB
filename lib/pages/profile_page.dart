import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final supabase = Supabase.instance.client;

  final oldPassword = TextEditingController();
  final newPassword = TextEditingController();

  bool loading = false;

  String getName() {
    final user = supabase.auth.currentUser;

    if (user == null) return "User";

    if (user.email == "graceviesangel1029@gmail.com") {
      return "Admin";
    }

    final metadata = user.userMetadata;

    if (metadata != null && metadata["name"] != null) {
      return metadata["name"];
    }

    return "User";
  }

  Future<void> changePassword() async {
    final user = supabase.auth.currentUser;

    if (user == null) return;

    try {
      await supabase.auth.signInWithPassword(
        email: user.email!,
        password: oldPassword.text,
      );

      await supabase.auth.updateUser(
        UserAttributes(password: newPassword.text),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Password berhasil diperbarui")),
      );

      oldPassword.clear();
      newPassword.clear();
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Password lama salah")));
    }
  }

  Future<void> logout() async {
    await supabase.auth.signOut();

    if (!mounted) return;

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const LoginPage()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = supabase.auth.currentUser;

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
                    "assets/images/home.png",
                    fit: BoxFit.cover,
                  ),
                ),

                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        const SizedBox(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Profil",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff5A4032),
                              ),
                            ),

                            IconButton(
                              icon: const Icon(Icons.arrow_back),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),

                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

                            child: Container(
                              padding: const EdgeInsets.all(20),

                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.65),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.4),
                                ),
                              ),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Nama Lengkap",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff5A4032),
                                    ),
                                  ),

                                  const SizedBox(height: 5),

                                  Text(getName()),

                                  const SizedBox(height: 20),

                                  const Text(
                                    "Email",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff5A4032),
                                    ),
                                  ),

                                  const SizedBox(height: 5),

                                  Text(user?.email ?? ""),

                                  const SizedBox(height: 20),

                                  const Text(
                                    "Password Lama",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff5A4032),
                                    ),
                                  ),

                                  const SizedBox(height: 8),

                                  TextField(
                                    controller: oldPassword,
                                    obscureText: true,
                                    decoration: const InputDecoration(
                                      hintText: "Masukkan password lama",
                                      border: OutlineInputBorder(),
                                    ),
                                  ),

                                  const SizedBox(height: 20),

                                  const Text(
                                    "Password Baru",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff5A4032),
                                    ),
                                  ),

                                  const SizedBox(height: 8),

                                  TextField(
                                    controller: newPassword,
                                    obscureText: true,
                                    decoration: const InputDecoration(
                                      hintText: "Masukkan password baru",
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        const Spacer(),

                        GestureDetector(
                          onTap: changePassword,
                          child: Container(
                            height: 60,
                            alignment: Alignment.center,

                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(40),
                            ),

                            child: const Text(
                              "Update Password",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff5A4032),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        GestureDetector(
                          onTap: logout,
                          child: Container(
                            height: 55,
                            alignment: Alignment.center,

                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.45),
                              borderRadius: BorderRadius.circular(40),
                            ),

                            child: const Text(
                              "Logout",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 55,
                            alignment: Alignment.center,

                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.35),
                              borderRadius: BorderRadius.circular(40),
                            ),

                            child: const Text(
                              "Hapus Akun",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
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
