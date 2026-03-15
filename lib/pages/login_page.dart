import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'home_page.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final supabase = Supabase.instance.client;

  bool loading = false;

  Future<void> login() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      loading = true;
    });

    try {
      await supabase.auth.signInWithPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const HomePage()),
        );
      }
    } on AuthException catch (error) {
      String message = error.message;

      if (message.contains("Invalid login credentials")) {
        message = "Email atau password salah";
      }

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Terjadi kesalahan saat login")),
      );
    }

    setState(() {
      loading = false;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe7e3ea),

      body: Center(
        child: SizedBox(
          width: 380,
          height: 780,

          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),

                child: Form(
                  key: formKey,

                  child: Column(
                    children: [
                      const Spacer(),

                      input(Icons.email, "Email", emailController),

                      const SizedBox(height: 14),

                      input(Icons.lock, "Password", passwordController, true),

                      const SizedBox(height: 24),

                      SizedBox(
                        width: double.infinity,
                        height: 55,

                        child: ElevatedButton(
                          onPressed: loading ? null : login,

                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff8B5E45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),

                          child: loading
                              ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ),

                      const SizedBox(height: 14),

                      const Text(
                        "Belum punya akun?",
                        style: TextStyle(color: Colors.black54),
                      ),

                      const SizedBox(height: 6),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const RegisterPage(),
                            ),
                          );
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8B5E45),
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
    );
  }

  Widget input(
    IconData icon,
    String hint,
    TextEditingController controller, [
    bool obscure = false,
  ]) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),

      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),

        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xffF6EBDD).withOpacity(0.85),
            borderRadius: BorderRadius.circular(30),
          ),

          child: TextFormField(
            controller: controller,
            obscureText: obscure,

            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Wajib diisi";
              }

              if (hint == "Email") {
                final emailRegex = RegExp(
                  r'^[\w\-\.]+@([\w\-]+\.)+[\w\-]{2,4}$',
                );

                if (!emailRegex.hasMatch(value)) {
                  return "Format email tidak valid";
                }
              }

              return null;
            },

            decoration: InputDecoration(
              prefixIcon: Icon(icon, color: const Color(0xff6E5B4E)),
              hintText: hint,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
