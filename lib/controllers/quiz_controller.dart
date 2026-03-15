import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/question_model.dart';

class QuizController {
  final supabase = Supabase.instance.client;

  Future<List<Question>> getQuestions(String kategori) async {
    final response = await supabase
        .from('questions')
        .select()
        .eq('kategori', kategori);

    List<Question> questions = [];

    for (var item in response) {
      questions.add(Question.fromJson(item));
    }

    return questions;
  }
}
