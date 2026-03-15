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

### ⚙️ Folder Controllers

<img width="171" height="50" alt="Image" src="https://github.com/user-attachments/assets/0a31fcaa-506b-4bdc-a81f-7a5ab218f11d" />

Folder **controllers** saya gunakan untuk menempatkan logika yang mengatur jalannya kuis di dalam aplikasi. Pada folder ini terdapat file `quiz_controller.dart` yang berfungsi membantu mengelola proses kuis seperti mengambil data soal dari database, mengatur perpindahan soal, serta menghitung skor pengguna setelah kuis selesai dikerjakan. Dengan memisahkan logika tersebut ke dalam controller, kode pada halaman tampilan menjadi lebih rapi dan lebih mudah untuk dipahami.

---

### 🧠 Folder `models`

Folder **models** digunakan untuk menyimpan struktur data yang digunakan dalam aplikasi.  
Pada aplikasi ini terdapat file:

`question_model.dart`

<img width="176" height="48" alt="Image" src="https://github.com/user-attachments/assets/8f9cacf6-855c-469f-a7b5-7d46fa9461a8" />

File ini digunakan untuk merepresentasikan struktur data **soal kuis** yang tersimpan di database Supabase, seperti:

- kategori soal  
- pertanyaan  
- pilihan jawaban A, B, C, dan D  
- jawaban yang benar  

Dengan menggunakan model ini, proses pengambilan dan pengolahan data dari database menjadi lebih rapi dan terstruktur.

---

### 📱 Folder `pages`

Folder **pages** berisi seluruh halaman utama yang ditampilkan dalam aplikasi.

<img width="254" height="210" alt="Image" src="https://github.com/user-attachments/assets/bfaa64ab-90a7-4386-ad8d-ff122208b66b" />

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

### 🔗 Folder Services

<img width="190" height="52" alt="Image" src="https://github.com/user-attachments/assets/285c30d3-ad6e-4b47-b91e-bf810685aa11" />

Folder **services** saya gunakan untuk mengatur proses komunikasi antara aplikasi dengan database **Supabase**. Di dalam folder ini terdapat file `supabase_service.dart` yang berisi beberapa fungsi yang saya gunakan untuk mengakses database, seperti proses login, register, mengambil data soal, menambahkan soal baru, mengubah soal, serta menghapus soal. Dengan memisahkan bagian ini ke dalam services, pengelolaan akses database menjadi lebih terstruktur dan tidak tercampur langsung dengan kode tampilan pada halaman aplikasi.

---

### 🚀 File main.dart

<img width="126" height="33" alt="Image" src="https://github.com/user-attachments/assets/ba0133ae-8528-4030-baec-bbca04d5d73c" />

File `main.dart` merupakan file utama dalam aplikasi Flutter yang pertama kali dijalankan ketika aplikasi dibuka. Pada file ini saya mengatur konfigurasi awal aplikasi, seperti proses inisialisasi Supabase agar aplikasi dapat terhubung dengan database yang digunakan. Selain itu, di dalam file ini juga ditentukan halaman awal yang akan ditampilkan ketika aplikasi dijalankan serta pengaturan navigasi antar halaman sehingga pengguna dapat berpindah dari satu halaman ke halaman lainnya dengan lancar.

---

### 🖼️ Folder Assets

<img width="152" height="104" alt="Image" src="https://github.com/user-attachments/assets/85334f6b-6dd0-455a-918a-aaef08b1c9a9" />

Selain kode program utama, aplikasi ini juga menggunakan folder **assets** yang berisi berbagai gambar yang digunakan untuk mempercantik tampilan aplikasi. Gambar-gambar tersebut digunakan sebagai background pada beberapa halaman seperti halaman home, materi, kuis, serta halaman admin. Dengan penggunaan gambar pada folder assets ini, tampilan aplikasi menjadi lebih menarik dan tidak terlihat terlalu kosong saat digunakan.

---

### ⚙️ File `pubspec.yaml`

<img width="122" height="29" alt="Image" src="https://github.com/user-attachments/assets/f13b7bcf-2f5d-4f11-8092-6a7b377ebcfb" />

File **pubspec.yaml** digunakan untuk mengatur dependency atau library yang digunakan dalam project Flutter. Pada file ini juga didaftarkan berbagai assets seperti gambar dan font agar dapat digunakan di dalam aplikasi.

---

### 🔐 File `.env`

<img width="78" height="28" alt="Image" src="https://github.com/user-attachments/assets/4ed9e2ff-99b2-4d0a-9757-3518e61a5239" />

Karena aplikasi ini menggunakan **database Supabase**, maka konfigurasi penting seperti **Supabase URL dan API Key** tidak langsung dituliskan di dalam source code. Sebagai gantinya, data tersebut disimpan di dalam file **`.env`** agar informasi sensitif tetap aman dan tidak terlihat langsung di dalam kode program.

---

## Fitur Aplikasi

Aplikasi **Kuis Literasi Digital** yang saya kembangkan memiliki beberapa fitur utama yang mendukung proses pembelajaran serta pengelolaan soal kuis. Fitur-fitur ini juga dibuat sesuai dengan ketentuan tugas yang diberikan, seperti penerapan operasi CRUD, navigasi antar halaman, serta integrasi database menggunakan Supabase.

• **Login Pengguna**  
Fitur login digunakan agar pengguna dapat masuk ke dalam aplikasi menggunakan akun yang sudah terdaftar. Proses login dilakukan menggunakan Supabase Authentication dengan email dan password. Setelah berhasil login, pengguna akan diarahkan ke halaman utama aplikasi.

• **Register Akun**  
Fitur register memungkinkan pengguna membuat akun baru sebelum menggunakan aplikasi. Pada halaman ini pengguna diminta mengisi email dan password yang nantinya akan disimpan melalui sistem autentikasi Supabase.

• **Materi Literasi Digital**  
Sebelum mengerjakan kuis, pengguna dapat membaca materi singkat mengenai literasi digital. Materi yang tersedia dalam aplikasi ini meliputi beberapa topik seperti Etika Digital, Keamanan Digital, dan Data Pribadi.

• **Kuis Pilihan Ganda**  
Pengguna dapat mengerjakan kuis yang berisi beberapa pertanyaan pilihan ganda sesuai dengan kategori yang dipilih. Pengguna memilih jawaban yang dianggap benar dan sistem akan memproses jawaban tersebut.

• **Perhitungan Skor Kuis**  
Setelah semua soal selesai dijawab, aplikasi akan menampilkan hasil skor kuis. Skor dihitung berdasarkan jumlah jawaban benar dari seluruh soal yang dikerjakan.

• **Kelola Soal (Admin)**  
Aplikasi menyediakan halaman khusus admin yang digunakan untuk melihat daftar soal yang tersimpan di database Supabase.

• **Menambah Soal (Create)**  
Admin dapat menambahkan soal baru melalui form tambah soal dengan mengisi beberapa field seperti kategori, pertanyaan, pilihan jawaban, serta jawaban yang benar.

• **Mengedit Soal (Update)**  
Admin dapat memperbarui atau mengedit soal yang sudah ada di database jika diperlukan perubahan.

• **Menghapus Soal (Delete)**  
Admin dapat menghapus soal dari database sehingga data soal dapat dikelola dengan lebih rapi.

• **Halaman Profil**  
Aplikasi menyediakan halaman profil yang menampilkan informasi akun pengguna yang sedang login.

• **Update Password**  
Pengguna dapat mengganti password akun melalui halaman profil untuk menjaga keamanan akun.

• **Logout**  
Fitur logout digunakan agar pengguna dapat keluar dari akun yang sedang digunakan.

• **Hapus Akun**  
Pengguna dapat menghapus akun yang telah dibuat jika sudah tidak ingin menggunakan aplikasi.

• **Validasi Input**  
Pada beberapa form seperti login, register, dan tambah soal, saya menambahkan validasi input untuk memastikan data yang dimasukkan tidak kosong sehingga dapat mengurangi kesalahan saat penyimpanan data.

---

## Nilai Tambah

Saya juga menambahkan beberapa fitur tambahan untuk meningkatkan kualitas aplikasi yang telah saya buat.

• **Login dan Register menggunakan Supabase Authentication**  
Aplikasi menggunakan sistem autentikasi Supabase sehingga proses login dan register dapat dilakukan secara aman dan terintegrasi dengan database.

• **Penggunaan File .env**  
Konfigurasi penting seperti Supabase URL dan API Key tidak langsung dituliskan di dalam source code, tetapi disimpan dalam file `.env` agar data sensitif lebih aman.

---

## Teknologi yang Digunakan

Dalam pengembangan aplikasi kuis literasi digital ini saya menggunakan beberapa teknologi utama yang mendukung pembuatan aplikasi mobile serta pengelolaan data secara online.

| Teknologi | Keterangan |
|----------|-------------|
| Flutter | Framework yang saya gunakan untuk membangun tampilan aplikasi mobile. |
| Dart | Bahasa pemrograman yang digunakan dalam pengembangan aplikasi Flutter. |
| Supabase | Digunakan sebagai backend dan database untuk menyimpan serta mengelola data soal kuis. |
| Supabase Authentication | Digunakan untuk mengelola proses login dan register pengguna pada aplikasi. |
| supabase_flutter | Library Flutter yang digunakan untuk menghubungkan aplikasi dengan layanan Supabase. |
| flutter_dotenv | Digunakan untuk membaca file `.env` sehingga konfigurasi seperti Supabase URL dan API Key dapat disimpan dengan lebih aman. |
| GitHub | Digunakan untuk menyimpan dan mengelola source code project secara online. |

---

## Struktur Database

Aplikasi kuis literasi digital ini menggunakan database dari **Supabase** untuk menyimpan data soal yang akan ditampilkan pada kuis. Data soal disimpan dalam satu tabel yang berisi beberapa kolom penting seperti kategori soal, pertanyaan, pilihan jawaban, serta jawaban yang benar.

Struktur database ini saya gunakan agar data soal dapat dikelola dengan lebih mudah melalui fitur CRUD yang tersedia pada aplikasi admin.

| Kolom Database | Keterangan |
|----------------|------------|
| id (int) | ID unik yang digunakan untuk membedakan setiap soal yang tersimpan di database. |
| kategori (text) | Menyimpan kategori soal seperti Etika Digital, Keamanan Digital, dan Data Pribadi. |
| question (text) | Berisi teks pertanyaan yang akan ditampilkan pada halaman kuis. |
| option_a (text) | Menyimpan pilihan jawaban A. |
| option_b (text) | Menyimpan pilihan jawaban B. |
| option_c (text) | Menyimpan pilihan jawaban C. |
| option_d (text) | Menyimpan pilihan jawaban D. |
| answer (text) | Menyimpan jawaban yang benar dari soal tersebut. |

---

## Widget dan Komponen yang Digunakan

Pada aplikasi kuis literasi digital ini saya menggunakan beberapa widget utama dari Flutter untuk membangun tampilan antarmuka aplikasi serta mengatur navigasi antar halaman. Widget-widget berikut digunakan pada berbagai halaman seperti register, login, home, materi, kuis, admin, dan profil.

| WIDGET | KETERANGAN |
|------|-------------|
| StatelessWidget | Digunakan pada halaman yang tidak membutuhkan perubahan state secara dinamis, seperti beberapa halaman tampilan sederhana. |
| StatefulWidget | Digunakan pada halaman yang memerlukan perubahan data atau interaksi pengguna, seperti halaman kuis, home, dan halaman admin. |
| Scaffold | Menjadi struktur dasar halaman yang menyediakan layout utama seperti body dan FloatingActionButton. |
| SafeArea | Digunakan agar tampilan aplikasi tidak tertutup oleh bagian sistem seperti status bar atau notch perangkat. |
| Stack | Digunakan untuk menumpuk beberapa widget, misalnya untuk menampilkan background gambar dengan komponen UI di atasnya. |
| Container | Digunakan untuk mengatur ukuran, warna, margin, serta dekorasi tampilan pada komponen UI. |
| Column & Row | Digunakan untuk mengatur tata letak widget secara vertikal dan horizontal. |
| Padding | Digunakan untuk memberikan jarak antar komponen agar tampilan lebih rapi. |
| Text | Digunakan untuk menampilkan teks seperti judul halaman, materi, pertanyaan kuis, dan informasi lainnya. |
| TextField | Digunakan pada form input seperti login, register, serta form tambah atau edit soal. |
| Image.asset | Digunakan untuk menampilkan gambar dari folder assets sebagai background pada beberapa halaman aplikasi. |
| GridView | Digunakan pada halaman home untuk menampilkan kategori literasi digital dalam bentuk grid. |
| ListView | Digunakan pada halaman admin untuk menampilkan daftar soal yang tersimpan di database. |
| Icon & IconButton | Digunakan untuk menampilkan ikon navigasi atau aksi seperti edit dan hapus soal. |
| GestureDetector | Digunakan untuk mendeteksi interaksi pengguna seperti memilih jawaban pada kuis atau menekan komponen tertentu. |
| ElevatedButton | Digunakan sebagai tombol aksi seperti login, register, serta melanjutkan soal kuis. |
| FloatingActionButton | Digunakan pada halaman admin untuk menambahkan soal baru. |
| Navigator | Digunakan untuk mengatur perpindahan halaman seperti dari login ke home atau dari materi ke halaman kuis. |
| BackdropFilter | Digunakan untuk memberikan efek blur atau glass effect pada beberapa komponen tampilan aplikasi. |
| AlertDialog | Digunakan untuk menampilkan hasil skor kuis setelah pengguna menyelesaikan semua soal. |gunakan untuk membuat efek glass atau blur pada beberapa komponen tampilan. |

---

## 🖥️ Tampilan Aplikasi

• Halaman Login

<img width="300" height="500" alt="Image" src="https://github.com/user-attachments/assets/49ac19a7-2ec7-45d4-9c17-3caaf81e3e69" />

• Halaman Register

<img width="470" height="900" alt="Image" src="https://github.com/user-attachments/assets/499a3b95-160d-48fb-8ef6-8f422970d63d" />

• Halaman Home

<img width="472" height="901" alt="Image" src="https://github.com/user-attachments/assets/b477db76-8e85-407d-964a-2306329083a9" />

• Halaman Materi

<img width="467" height="902" alt="Image" src="https://github.com/user-attachments/assets/862d585a-0fce-4b34-b7fa-dc4c0baa200d" />

• Halaman Kuis

<img width="471" height="905" alt="Image" src="https://github.com/user-attachments/assets/55bc2d68-ec06-4d1b-bfb6-405585c50eb5" />

• Tampilan Hasil Skor

<img width="471" height="906" alt="Image" src="https://github.com/user-attachments/assets/6a90505f-3753-4be4-80b8-076df3fb69f0" />

• Halaman Profile (User)

<img width="468" height="906" alt="Image" src="https://github.com/user-attachments/assets/10de11d7-e69e-4a04-8b63-7163ce7d2a09" />

• Halaman Kelola Soal (Admin)

<img width="466" height="902" alt="Image" src="https://github.com/user-attachments/assets/4c572f2b-e0ca-4e5f-bed7-4f3dfb098ba1" />

• Halaman Tambah Soal (Admin)

<img width="467" height="905" alt="Image" src="https://github.com/user-attachments/assets/7e0f864b-8383-4bb1-ac46-10edee18e5ba" />

• Halaman Edit Soal (Admin)

<img width="468" height="907" alt="Image" src="https://github.com/user-attachments/assets/3b66daa5-9f5d-4f3d-95da-22f070d47d29" />


