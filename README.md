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

Dalam aplikasi **Kuis Literasi Digital** yang saya kembangkan terdapat beberapa fitur utama yang mendukung proses pembelajaran serta pengelolaan soal kuis. Fitur-fitur ini dibuat sesuai dengan ketentuan tugas seperti penerapan CRUD, navigasi antar halaman, serta integrasi database menggunakan Supabase.

| Fitur | Keterangan |
|------|-------------|
| Login Pengguna | Digunakan agar pengguna dapat masuk ke dalam aplikasi menggunakan akun yang sudah terdaftar melalui Supabase Authentication dengan email dan password. |
| Register Akun | Memungkinkan pengguna membuat akun baru sebelum menggunakan aplikasi dengan memasukkan email dan password. |
| Materi Literasi Digital | Menyediakan materi pembelajaran singkat mengenai literasi digital seperti Etika Digital, Keamanan Digital, dan Data Pribadi. |
| Kuis Pilihan Ganda | Pengguna dapat mengerjakan kuis yang berisi beberapa pertanyaan pilihan ganda sesuai kategori yang dipilih. |
| Perhitungan Skor Kuis | Setelah kuis selesai, aplikasi akan menampilkan skor berdasarkan jumlah jawaban yang benar. |
| Kelola Soal (Admin) | Admin dapat melihat daftar soal yang tersimpan di database Supabase. |
| Menambah Soal (Create) | Admin dapat menambahkan soal baru melalui form tambah soal dengan mengisi kategori, pertanyaan, pilihan jawaban, dan jawaban yang benar. |
| Mengedit Soal (Update) | Admin dapat memperbarui soal yang sudah ada di database jika diperlukan perubahan. |
| Menghapus Soal (Delete) | Admin dapat menghapus soal dari database agar data tetap rapi dan terkelola. |
| Halaman Profil | Menampilkan informasi akun pengguna yang sedang login. |
| Update Password | Pengguna dapat mengganti password akun melalui halaman profil untuk menjaga keamanan akun. |
| Logout | Digunakan untuk keluar dari akun yang sedang digunakan. |
| Hapus Akun | Memungkinkan pengguna menghapus akun yang telah dibuat jika sudah tidak ingin menggunakan aplikasi. |
| Validasi Input | Pada beberapa form seperti login, register, dan tambah soal terdapat validasi agar data yang dimasukkan tidak kosong. |

---

## Nilai Tambah

Saya juga menambahkan beberapa fitur tambahan untuk meningkatkan kualitas aplikasi yang telah saya buat.

| Fitur Tambahan | Keterangan |
|---------------|------------|
| Login dan Register menggunakan Supabase Authentication | Sistem autentikasi Supabase digunakan untuk mengelola proses login dan register sehingga akun pengguna dapat terintegrasi langsung dengan database. |
| Penggunaan File .env | Konfigurasi penting seperti Supabase URL dan API Key tidak langsung dituliskan di dalam source code, tetapi disimpan dalam file `.env` agar informasi sensitif lebih aman. |

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

<img width="260" height="500" alt="Image" src="https://github.com/user-attachments/assets/49ac19a7-2ec7-45d4-9c17-3caaf81e3e69" />

---

• Halaman Register

<img width="260" height="500" alt="Image" src="https://github.com/user-attachments/assets/499a3b95-160d-48fb-8ef6-8f422970d63d" />

---

• Halaman Home

<img width="260" height="500" alt="Image" src="https://github.com/user-attachments/assets/b477db76-8e85-407d-964a-2306329083a9" />

---

• Halaman Materi

<img width="260" height="500" alt="Image" src="https://github.com/user-attachments/assets/862d585a-0fce-4b34-b7fa-dc4c0baa200d" />

---

• Halaman Kuis

<img width="260" height="500" alt="Image" src="https://github.com/user-attachments/assets/55bc2d68-ec06-4d1b-bfb6-405585c50eb5" />

---

• Tampilan Hasil Skor

<img width="260" height="500" alt="Image" src="https://github.com/user-attachments/assets/6a90505f-3753-4be4-80b8-076df3fb69f0" />

---

• Halaman Profile (User)

<img width="260" height="500" alt="Image" src="https://github.com/user-attachments/assets/10de11d7-e69e-4a04-8b63-7163ce7d2a09" />

---

• Halaman Kelola Soal (Admin)

<img width="260" height="500" alt="Image" src="https://github.com/user-attachments/assets/4c572f2b-e0ca-4e5f-bed7-4f3dfb098ba1" />

---

• Halaman Tambah Soal (Admin)

<img width="260" height="500" alt="Image" src="https://github.com/user-attachments/assets/7e0f864b-8383-4bb1-ac46-10edee18e5ba" />

---

• Halaman Edit Soal (Admin)

<img width="260" height="500" alt="Image" src="https://github.com/user-attachments/assets/3b66daa5-9f5d-4f3d-95da-22f070d47d29" />

---

## Validasi Input pada Aplikasi

Pada aplikasi kuis literasi digital yang saya kembangkan, beberapa halaman dilengkapi dengan validasi input. Tujuan dari validasi ini adalah untuk memastikan data yang dimasukkan oleh pengguna sudah sesuai sebelum diproses oleh sistem. Dengan adanya validasi ini, aplikasi dapat mencegah kesalahan input seperti data kosong, format email yang tidak benar, atau password yang tidak memenuhi ketentuan.


### 1. Validasi pada Halaman Login

<img width="340" height="500" alt="Image" src="https://github.com/user-attachments/assets/494e2462-3c7a-46ea-91a5-0c9ba42c2d48" />

Halaman login digunakan oleh pengguna untuk masuk ke dalam aplikasi menggunakan akun yang sudah terdaftar. Pada halaman ini terdapat validasi yang akan memeriksa apakah data yang dimasukkan sesuai dengan data akun yang tersimpan pada sistem.

#### a. Validasi Email atau Password Salah

Jika pengguna memasukkan email atau password yang tidak sesuai dengan data yang tersimpan di sistem, maka aplikasi akan menampilkan pesan kesalahan.

Contoh pesan yang muncul:

> Email atau password salah

Validasi ini bertujuan untuk memastikan bahwa hanya pengguna yang memiliki akun yang valid yang dapat masuk ke dalam aplikasi.

---

### 2. Validasi pada Halaman Register

<img width="340" height="500" alt="Image" src="https://github.com/user-attachments/assets/161efd89-9ad8-4ee9-9063-b82c2385dd0c" />

Halaman register digunakan untuk membuat akun baru sebelum pengguna dapat menggunakan aplikasi. Pada halaman ini terdapat beberapa validasi yang digunakan untuk memastikan data yang dimasukkan sudah benar.

#### a. Validasi Nama Tidak Boleh Kosong

Ketika pengguna menekan tombol **Register** tanpa mengisi nama lengkap, aplikasi akan menampilkan pesan bahwa kolom tersebut wajib diisi.

Contoh pesan yang muncul:

> Wajib diisi

Validasi ini bertujuan agar setiap akun memiliki identitas pengguna yang jelas.

---

#### b. Validasi Format Email

Sistem akan memeriksa apakah email yang dimasukkan memiliki format yang benar. Jika format email tidak sesuai, maka aplikasi akan menampilkan pesan kesalahan.

Contoh pesan yang muncul:

> Format email tidak valid

Validasi ini membantu memastikan bahwa email yang digunakan dapat dikenali oleh sistem autentikasi.

---

#### c. Validasi Panjang Password

Password yang dimasukkan oleh pengguna harus memiliki minimal 8 karakter. Jika password yang dimasukkan terlalu pendek, maka aplikasi akan menampilkan pesan peringatan.

Contoh pesan yang muncul:

> Password minimal 8 karakter

Tujuan dari validasi ini adalah untuk meningkatkan keamanan akun pengguna.

---

### 3. Validasi pada Halaman Update Password

<img width="340" height="500" alt="Image" src="https://github.com/user-attachments/assets/b8fa6b0a-dc43-48bd-8e33-029e9e022a7d" />

Pada halaman profil, pengguna dapat mengganti password akun yang sedang digunakan. Saat proses ini dilakukan, aplikasi akan memeriksa apakah password lama yang dimasukkan sudah benar.

#### a. Validasi Password Lama

Jika password lama yang dimasukkan tidak sesuai dengan password akun yang tersimpan di sistem, maka aplikasi akan menampilkan pesan kesalahan.

Contoh pesan yang muncul:

> Password lama salah

Validasi ini bertujuan untuk memastikan bahwa perubahan password hanya dapat dilakukan oleh pemilik akun yang sah.

---

### 4. Validasi pada Form Tambah dan Edit Soal (Admin)

<img width="340" height="500" alt="Image" src="https://github.com/user-attachments/assets/ab832593-ac4c-4c2d-b28d-b5aefdccbf6e" />

Pada halaman admin, terdapat form yang digunakan untuk menambahkan atau mengedit soal kuis. Form ini memiliki beberapa kolom seperti kategori soal, pertanyaan, pilihan jawaban, serta jawaban yang benar. Untuk memastikan data yang dimasukkan lengkap, aplikasi menerapkan validasi sebelum data disimpan ke dalam database.

#### a. Validasi Kolom Tidak Boleh Kosong

Jika admin menekan tombol **Simpan** tanpa mengisi seluruh kolom yang tersedia, maka aplikasi akan menampilkan pesan peringatan.

Contoh pesan yang muncul:

> Semua kolom harus diisi

Validasi ini memastikan bahwa data soal yang disimpan ke dalam database sudah lengkap sehingga dapat ditampilkan dengan benar pada halaman kuis.

---

### 5. Validasi pada Form Edit Soal (Admin)

<img width="340" height="500" alt="Image" src="https://github.com/user-attachments/assets/1b64d274-9c1e-4c41-8313-49fe1aed6136" />

Selain menambahkan soal baru, admin juga dapat mengedit soal yang sudah ada. Pada proses ini, sistem tetap melakukan pengecekan agar data soal tidak diubah menjadi kosong.

a. Validasi Data Soal Tidak Boleh Kosong

Jika admin menghapus isi salah satu kolom seperti pertanyaan atau pilihan jawaban kemudian menekan tombol Simpan, maka aplikasi akan menampilkan pesan peringatan.

Contoh pesan yang muncul:

> Semua kolom harus diisi

Validasi ini bertujuan untuk menjaga agar data soal yang tersimpan di database tetap lengkap dan dapat digunakan dengan baik saat proses kuis berlangsung.

---

## Alur Tampilan Aplikasi

Berikut adalah alur penggunaan aplikasi kuis literasi digital yang telah saya kembangkan. Di sini dapat dilihat bagaimana pengguna menggunakan aplikasi mulai dari membuka aplikasi, melakukan login atau register, hingga masuk ke halaman utama untuk memilih kategori materi. Setelah membaca materi yang tersedia, pengguna dapat melanjutkan ke halaman kuis untuk menjawab beberapa soal yang diberikan. Di akhir kuis, aplikasi akan menampilkan hasil skor yang diperoleh pengguna. Selain itu, saya juga menyediakan halaman profil serta halaman khusus admin yang digunakan untuk mengelola soal kuis di dalam aplikasi.

---

### 1. Halaman Login

Saat aplikasi pertama kali dibuka, pengguna akan langsung diarahkan ke halaman login. Pada halaman ini pengguna diminta untuk memasukkan email dan password yang sudah terdaftar sebelumnya. Jika pengguna belum memiliki akun, maka pengguna dapat memilih menu **Register** untuk membuat akun terlebih dahulu.

Setelah email dan password dimasukkan dengan benar, pengguna dapat menekan tombol **Login** untuk masuk ke dalam aplikasi dan melanjutkan ke halaman utama.

**Tampilan Halaman Login**

<img width="340" height="500" alt="Image" src="https://github.com/user-attachments/assets/310c8865-0510-420c-8c70-07f920610efb" />

---

### 2. Halaman Register

Halaman register digunakan oleh pengguna yang belum memiliki akun. Pada halaman ini pengguna diminta untuk mengisi beberapa data seperti **nama lengkap, email, dan password**.

Jika seluruh data sudah diisi dengan benar, pengguna dapat menekan tombol **Register** untuk membuat akun baru. Setelah proses pendaftaran berhasil, pengguna dapat kembali ke halaman login untuk masuk ke dalam aplikasi menggunakan akun yang sudah dibuat.

**Tampilan Halaman Register**

<img width="340" height="500" alt="Image" src="https://github.com/user-attachments/assets/c9fed8ca-7709-4749-8dd7-22662e5121c7" />

---

### 3. Halaman Home

Setelah berhasil login, pengguna akan masuk ke halaman utama aplikasi. Pada halaman ini ditampilkan beberapa kategori literasi digital yang tersedia di dalam aplikasi.

Pengguna dapat memilih salah satu kategori yang ingin dipelajari. Dari halaman ini pengguna dapat melanjutkan ke halaman materi sebelum mengerjakan kuis.

**Tampilan Halaman Home**

<img width="340" height="500" alt="Image" src="https://github.com/user-attachments/assets/c86698a4-1726-43ae-918b-84c9fcdb20a1" />

---

### 4. Halaman Materi

Setelah memilih kategori, pengguna akan diarahkan ke halaman materi. Pada halaman ini terdapat penjelasan singkat mengenai topik literasi digital yang dipilih.

Materi ini disediakan agar pengguna dapat memahami terlebih dahulu isi materi sebelum mulai mengerjakan kuis.

**Tampilan Halaman Materi**

<img width="340" height="500" alt="Image" src="https://github.com/user-attachments/assets/66a13553-078c-4f17-8aba-dae7c703d1a2" />

---

### 5. Halaman Kuis

Setelah membaca materi, pengguna dapat melanjutkan ke halaman kuis. Pada halaman ini pengguna akan menjawab beberapa soal pilihan ganda yang berkaitan dengan materi yang telah dipelajari.

Pengguna cukup memilih salah satu jawaban yang dianggap benar dari pilihan jawaban yang tersedia.

**Tampilan Halaman Kuis**

<img width="340" height="500" alt="Image" src="https://github.com/user-attachments/assets/597472bc-8d9e-4a2c-ae62-ab1ae04dbe15" />

---

### 6. Tampilan Hasil Skor

Setelah seluruh soal selesai dijawab, aplikasi akan menampilkan hasil skor dari kuis yang telah dikerjakan. Skor dihitung berdasarkan jumlah jawaban yang benar dari semua soal yang tersedia.

Dengan adanya hasil skor ini, pengguna dapat mengetahui sejauh mana pemahaman mereka terhadap materi yang telah dipelajari sebelumnya.

**Tampilan Hasil Skor**

<img width="340" height="500" alt="Image" src="https://github.com/user-attachments/assets/b30d800f-7bfc-4c3f-aaa3-86259fca202e" />

---

### 7. Halaman Profil

Aplikasi ini juga menyediakan halaman profil yang menampilkan informasi akun pengguna yang sedang login. Pada halaman ini pengguna dapat melihat data akun seperti **nama dan email**.

Selain itu terdapat beberapa fitur tambahan seperti **update password, logout, serta hapus akun** jika pengguna sudah tidak ingin menggunakan aplikasi lagi.

**Tampilan Halaman Profil**

<img width="340" height="500" alt="Image" src="https://github.com/user-attachments/assets/c536e98f-80f1-4752-8df1-95b99ef32693" />

---

### 8. Halaman Kelola Soal (Admin)

Selain digunakan oleh pengguna untuk mengerjakan kuis, aplikasi ini juga menyediakan halaman khusus admin yang digunakan untuk mengelola data soal yang tersimpan di database.

Pada halaman ini admin dapat melihat daftar soal yang tersedia serta melakukan pengelolaan data soal.

**Tampilan Halaman Kelola Soal**

<img width="340" height="500" alt="Image" src="https://github.com/user-attachments/assets/97adc944-124e-4e83-810c-d140487c9b7c" />

---

### 9. Halaman Form Tambah dan Edit Soal

Ketika admin ingin menambahkan soal baru atau mengedit soal yang sudah ada, sistem akan menampilkan form yang berisi beberapa kolom seperti **kategori soal, pertanyaan, pilihan jawaban, serta jawaban yang benar**.

Sebelum data disimpan ke database, aplikasi akan melakukan pengecekan untuk memastikan semua kolom telah diisi. Jika ada kolom yang kosong, maka aplikasi akan menampilkan pesan bahwa semua kolom harus diisi.

**Tampilan Form Soal**

<img width="340" height="500" alt="Image" src="https://github.com/user-attachments/assets/a8020581-1fb4-4161-8221-199fa41dbd44" />
