import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final supabase = Supabase.instance.client;

  Future<void> login(String email, String password) async {
    await supabase.auth.signInWithPassword(email: email, password: password);
  }

  Future<void> register(String email, String password) async {
    await supabase.auth.signUp(email: email, password: password);
  }

  Future<void> logout() async {
    await supabase.auth.signOut();
  }

  Future<List<dynamic>> getQuestions(String kategori) async {
    final data = await supabase
        .from('questions')
        .select()
        .eq('kategori', kategori);

    return data;
  }

  Future<void> updatePassword(String password) async {
    await supabase.auth.updateUser(UserAttributes(password: password));
  }

  Future<void> deleteAccount() async {
    final user = supabase.auth.currentUser;
    await supabase.rpc('delete_user', params: {'user_id': user!.id});
  }

  Future<void> addQuestion(Map<String, dynamic> data) async {
    await supabase.from("questions").insert(data);
  }

  Future<void> updateQuestion(int id, Map<String, dynamic> data) async {
    await supabase.from("questions").update(data).eq("id", id);
  }

  Future<void> deleteQuestion(int id) async {
    await supabase.from("questions").delete().eq("id", id);
  }
}
