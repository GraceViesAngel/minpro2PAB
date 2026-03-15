import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'admin_form_question_page.dart';

class AdminQuestionPage extends StatefulWidget {
  const AdminQuestionPage({super.key});

  @override
  State<AdminQuestionPage> createState() => _AdminQuestionPageState();
}

class _AdminQuestionPageState extends State<AdminQuestionPage> {
  final supabase = Supabase.instance.client;

  List questions = [];

  Future<void> loadQuestions() async {
    final data = await supabase.from('questions').select().order('id');

    setState(() {
      questions = data;
    });
  }

  Future<void> deleteQuestion(int id) async {
    await supabase.from('questions').delete().eq('id', id);

    loadQuestions();
  }

  @override
  void initState() {
    super.initState();
    loadQuestions();
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

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            const Text(
                              "Kelola Soal",
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

                        Expanded(
                          child: ListView.builder(
                            itemCount: questions.length,

                            itemBuilder: (context, index) {
                              final q = questions[index];

                              return Container(
                                margin: const EdgeInsets.only(bottom: 14),

                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),

                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 10,
                                      sigmaY: 10,
                                    ),

                                    child: Container(
                                      padding: const EdgeInsets.all(16),

                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.65),
                                        borderRadius: BorderRadius.circular(20),

                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(
                                              0.08,
                                            ),
                                            blurRadius: 15,
                                            spreadRadius: 1,
                                          ),
                                        ],
                                      ),

                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,

                                        children: [
                                          Text(
                                            q["kategori"],
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff5A4032),
                                            ),
                                          ),

                                          const SizedBox(height: 6),

                                          Text(
                                            q["question"],
                                            style: const TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),

                                          const SizedBox(height: 10),

                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,

                                            children: [
                                              IconButton(
                                                icon: const Icon(
                                                  Icons.edit,
                                                  color: Color(0xff5A4032),
                                                ),

                                                onPressed: () async {
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (_) =>
                                                          AdminFormQuestionPage(
                                                            question: q,
                                                          ),
                                                    ),
                                                  );

                                                  loadQuestions();
                                                },
                                              ),

                                              IconButton(
                                                icon: const Icon(
                                                  Icons.delete,
                                                  color: Colors.red,
                                                ),

                                                onPressed: () {
                                                  deleteQuestion(q["id"]);
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),

                        GestureDetector(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const AdminFormQuestionPage(),
                              ),
                            );

                            loadQuestions();
                          },

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),

                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

                              child: Container(
                                height: 60,
                                alignment: Alignment.center,

                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.65),

                                  borderRadius: BorderRadius.circular(40),

                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.08),
                                      blurRadius: 15,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),

                                child: const Text(
                                  "Tambah Soal",
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
