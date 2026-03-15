import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AdminFormQuestionPage extends StatefulWidget {
  final Map? question;

  const AdminFormQuestionPage({super.key, this.question});

  @override
  State<AdminFormQuestionPage> createState() => _AdminFormQuestionPageState();
}

class _AdminFormQuestionPageState extends State<AdminFormQuestionPage> {
  final supabase = Supabase.instance.client;

  final kategori = TextEditingController();
  final question = TextEditingController();
  final a = TextEditingController();
  final b = TextEditingController();
  final c = TextEditingController();
  final d = TextEditingController();
  final answer = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.question != null) {
      final q = widget.question!;

      kategori.text = q["kategori"];
      question.text = q["question"];
      a.text = q["option_a"];
      b.text = q["option_b"];
      c.text = q["option_c"];
      d.text = q["option_d"];
      answer.text = q["answer"];
    }
  }

  Future<void> save() async {
    // VALIDASI INPUT
    if (kategori.text.isEmpty ||
        question.text.isEmpty ||
        a.text.isEmpty ||
        b.text.isEmpty ||
        c.text.isEmpty ||
        d.text.isEmpty ||
        answer.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Semua kolom harus diisi"),
          backgroundColor: Colors.red,
        ),
      );

      return;
    }

    final data = {
      "kategori": kategori.text,
      "question": question.text,
      "option_a": a.text,
      "option_b": b.text,
      "option_c": c.text,
      "option_d": d.text,
      "answer": answer.text,
    };

    if (widget.question == null) {
      await supabase.from("questions").insert(data);
    } else {
      await supabase
          .from("questions")
          .update(data)
          .eq("id", widget.question!["id"]);
    }

    if (mounted) {
      Navigator.pop(context);
    }
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
                    padding: const EdgeInsets.all(24),

                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            const Text(
                              "Form Soal",
                              style: TextStyle(
                                fontSize: 22,
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

                        input("Kategori", kategori),
                        input("Pertanyaan", question),
                        input("Option A", a),
                        input("Option B", b),
                        input("Option C", c),
                        input("Option D", d),
                        input("Jawaban", answer),

                        const SizedBox(height: 25),

                        GestureDetector(
                          onTap: save,

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),

                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

                              child: Container(
                                height: 55,
                                alignment: Alignment.center,

                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.65),
                                  borderRadius: BorderRadius.circular(30),

                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.08),
                                      blurRadius: 15,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),

                                child: const Text(
                                  "Simpan",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color(0xff5A4032),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
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

  Widget input(String hint, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),

        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

          child: TextField(
            controller: controller,

            decoration: InputDecoration(
              hintText: hint,

              filled: true,
              fillColor: Colors.white.withOpacity(0.65),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

