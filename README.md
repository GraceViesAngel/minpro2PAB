# <h1 align="center">🎓 EduSmart Digital Literacy</h1>

<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/a6bb56b4-17db-4d7e-8844-e844cadd8bee" />

---

### NAMA : GRACE VIES ANGEL
### NIM : 2409116005
### KELAS : A'2024
---
## Deskripsi Aplikasi

Aplikasi **Kuis Literasi Digital** merupakan aplikasi mobile sederhana yang saya kembangkan menggunakan framework **Flutter**. Aplikasi ini saya buat sebagai media pembelajaran yang membantu pengguna memahami konsep dasar literasi digital melalui materi singkat dan kuis interaktif. Materi yang tersedia dalam aplikasi ini mencakup beberapa topik seperti etika digital, keamanan digital, dan perlindungan data pribadi.

Melalui aplikasi ini, pengguna dapat membaca materi terlebih dahulu sebelum memulai kuis. Setelah itu pengguna dapat mengerjakan kuis yang berisi beberapa pertanyaan pilihan ganda sesuai dengan kategori yang dipilih. Setelah kuis selesai dikerjakan, aplikasi akan menampilkan skor berdasarkan jumlah jawaban yang benar.

Dalam pengembangannya, saya juga mengintegrasikan aplikasi ini dengan **database Supabase** sehingga data soal dapat dikelola secara dinamis menggunakan operasi **CRUD (Create, Read, Update, Delete)**. Dengan adanya sistem ini, admin dapat menambahkan, mengubah, maupun menghapus soal kuis secara langsung melalui aplikasi.

Pada versi awal aplikasi, data pengguna yang diminta hanya berupa **nama, kelas, dan email** sebelum memulai kuis. Namun pada pengembangan selanjutnya, sistem tersebut diperbarui dengan menggunakan **fitur login dan register menggunakan Supabase Authentication**. Perubahan ini dilakukan agar proses autentikasi pengguna menjadi lebih aman, sekaligus memungkinkan penerapan **validasi input** serta fitur **perubahan password** pada akun pengguna.

---

## 📂 Struktur Folder & File Project

Struktur project yang saya gunakan mengikuti struktur standar dari framework **Flutter**. Di dalam project ini terdapat beberapa folder bawaan seperti `android`, `ios`, `linux`, `macos`, `windows`, dan `web`. Folder-folder tersebut otomatis dibuat oleh Flutter untuk mendukung aplikasi agar dapat dijalankan di berbagai platform. Pada bagian ini saya tidak melakukan perubahan khusus karena folder tersebut lebih berfungsi sebagai konfigurasi sistem.

<img width="310" height="855" alt="Image" src="https://github.com/user-attachments/assets/639663ee-5296-467b-9191-5c19e764fd22" />

---

### 📁 Folder `lib`

Folder **lib** merupakan bagian paling penting dalam project karena seluruh kode utama aplikasi berada di dalam folder ini. Di dalam folder ini saya mengatur logika aplikasi, tampilan halaman, serta model data yang digunakan oleh aplikasi.

<img width="257" height="393" alt="Image" src="https://github.com/user-attachments/assets/690c29ed-de2c-476b-94af-b62050fb8270" />


---

### 🧠 Folder `models`

Folder **models** digunakan untuk menyimpan struktur data yang digunakan dalam aplikasi.  
Pada aplikasi ini terdapat file:

`question_model.dart`



File ini digunakan untuk merepresentasikan struktur data **soal kuis** yang tersimpan di database Supabase, seperti:

- kategori soal  
- pertanyaan  
- pilihan jawaban A, B, C, dan D  
- jawaban yang benar  

Dengan menggunakan model ini, proses pengambilan dan pengolahan data dari database menjadi lebih rapi dan terstruktur.

---

### 📱 Folder `pages`

Folder **pages** berisi seluruh halaman utama yang ditampilkan dalam aplikasi.

Beberapa halaman yang terdapat di dalamnya antara lain:

- **home_page.dart**  
  Halaman utama aplikasi yang menampilkan kategori literasi digital seperti Etika Digital, Keamanan Digital, dan Data Pribadi.

- **materi_page.dart**  
  Halaman yang menampilkan materi pembelajaran singkat sebelum pengguna memulai kuis.

- **quiz_page.dart**  
  Halaman yang digunakan untuk menampilkan soal kuis dan pilihan jawaban yang dapat dipilih oleh pengguna.

- **profile_page.dart**  
  Halaman profil pengguna yang berisi informasi akun, fitur update password, logout, serta hapus akun.

- **admin_question_page.dart**  
  Halaman khusus admin yang digunakan untuk melihat daftar soal yang tersimpan di database.

- **admin_form_question_page.dart**  
  Halaman form yang digunakan admin untuk menambahkan atau mengedit soal kuis.

- **login_page.dart**  
  Halaman login yang digunakan pengguna untuk masuk ke dalam aplikasi menggunakan akun yang sudah terdaftar.

- **register_page.dart**  
  Halaman pendaftaran akun baru menggunakan Supabase Authentication.

---

### 🚀 File `main.dart`

File **main.dart** merupakan file utama dalam aplikasi Flutter yang pertama kali dijalankan saat aplikasi dibuka.

Pada file ini saya melakukan beberapa konfigurasi penting seperti:

- Inisialisasi **Supabase**
- Menentukan halaman awal aplikasi
- Mengatur navigasi antar halaman

Sehingga aplikasi dapat berjalan dengan baik sejak pertama kali dijalankan.

---

### 🖼️ Folder `assets`

Selain folder kode program, aplikasi ini juga menggunakan folder **assets** yang berisi berbagai file tambahan untuk mendukung tampilan aplikasi.

Di dalam folder ini terdapat beberapa file seperti:

- **images** → berisi gambar background yang digunakan dalam aplikasi  
- **font** → font tambahan yang digunakan untuk mempercantik tampilan aplikasi

Gambar-gambar ini digunakan pada beberapa halaman seperti **home, materi, kuis, dan halaman admin** agar tampilan aplikasi terlihat lebih menarik.

---

### ⚙️ File `pubspec.yaml`

File **pubspec.yaml** digunakan untuk mengatur dependency atau library yang digunakan dalam project Flutter.

Pada file ini juga didaftarkan berbagai assets seperti gambar dan font agar dapat digunakan di dalam aplikasi.

---

### 🔐 File `.env`

Karena aplikasi ini menggunakan **database Supabase**, maka konfigurasi penting seperti **Supabase URL dan API Key** tidak langsung dituliskan di dalam source code.

Sebagai gantinya, data tersebut disimpan di dalam file **`.env`** agar informasi sensitif tetap aman dan tidak terlihat langsung di dalam kode program.



