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
