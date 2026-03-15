import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'profile_page.dart';
import 'materi_page.dart';
import 'admin_question_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final supabase = Supabase.instance.client;

  int index = 0;

  bool get isAdmin {
    final user = supabase.auth.currentUser;
    if (user == null) return false;
    return user.email == "graceviesangel1029@gmail.com";
  }

  String get greetingName {
    final user = supabase.auth.currentUser;

    if (user == null) return "User";

    if (user.email == "graceviesangel1029@gmail.com") {
      return "Admin";
    }

    final metadata = user.userMetadata;

    if (metadata != null && metadata["name"] != null) {
      return metadata["name"];
    }

    return user.email!.split("@")[0];
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
                        const SizedBox(height: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Halo, $greetingName",
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff5A4032),
                              ),
                            ),

                            GestureDetector(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const ProfilePage(),
                                  ),
                                );

                                setState(() {});
                              },

                              child: const CircleAvatar(
                                radius: 20,
                                backgroundColor: Color(0xff8B5E45),
                                child: Icon(Icons.person, color: Colors.white),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 30),

                        /// GLASS KATEGORI TITLE
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),

                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),

                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.65),
                                borderRadius: BorderRadius.circular(15),
                              ),

                              child: const Text(
                                "Kategori",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff5A4032),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,

                            children: [
                              categoryCard(
                                "Etika Digital",
                                Icons.favorite,
                                const Color(0xffE57373),
                              ),

                              categoryCard(
                                "Keamanan Digital",
                                Icons.lock,
                                const Color(0xffFFB74D),
                              ),

                              categoryCard(
                                "Data Pribadi",
                                Icons.privacy_tip,
                                const Color(0xff64B5F6),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(bottom: 0, left: 0, right: 0, child: glassNavbar()),
              ],
            ),

            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

            floatingActionButton: isAdmin
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 70, right: 6),

                    child: FloatingActionButton(
                      backgroundColor: const Color(0xff8B5E45).withOpacity(0.9),

                      elevation: 5,

                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const AdminQuestionPage(),
                          ),
                        );

                        /// refresh home setelah kembali dari admin
                        setState(() {});
                      },

                      child: const Icon(Icons.add, color: Colors.white),
                    ),
                  )
                : null,
          ),
        ),
      ),
    );
  }

  Widget categoryCard(String title, IconData icon, Color color) {
    return GestureDetector(
      onTap: () async {
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => MateriPage(kategori: title)),
        );

        setState(() {});
      },

      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),

        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.65),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.white.withOpacity(0.4)),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(icon, size: 40, color: color),

                const SizedBox(height: 10),

                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff5A4032),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget glassNavbar() {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),

      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),

        child: Container(
          height: 70,

          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),

            border: Border(
              top: BorderSide(color: Colors.white.withOpacity(0.3)),
            ),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [navIcon(Icons.home, 0), navIcon(Icons.person, 1)],
          ),
        ),
      ),
    );
  }

  Widget navIcon(IconData icon, int i) {
    bool active = index == i;

    return GestureDetector(
      onTap: () async {
        setState(() {
          index = i;
        });

        if (i == 1) {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const ProfilePage()),
          );

          setState(() {
            index = 0;
          });
        }
      },

      child: Icon(
        icon,
        size: 28,
        color: active ? const Color(0xff5A4032) : Colors.black45,
      ),
    );
  }
}
