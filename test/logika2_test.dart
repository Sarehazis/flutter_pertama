// Berikut adalah contoh studi kasus sederhana yang ditambahkan parameter pada fungsi:

// Studi Kasus: Penentuan Kelulusan Mahasiswa Berdasarkan Nilai Ujian dan Kehadiran

// Di sebuah kelas, kelulusan seorang mahasiswa ditentukan berdasarkan dua kriteria, yaitu nilai ujian dan persentase kehadiran. Berikut adalah ketentuan kelulusannya:

// Jika nilai ujian (nilaiujian) lebih besar atau sama dengan 80 dan kehadiran (kehadiran) lebih besar atau sama dengan 75%, maka mahasiswa mendapatkan grade "A".
// Jika nilai ujian antara 50 dan 79 (inklusif) dan kehadiran lebih besar atau sama dengan 60%, maka mahasiswa mendapatkan grade "B".
// Jika kedua syarat di atas tidak terpenuhi, maka mahasiswa dinyatakan "Tidak Lulus".
// Buatlah sebuah program yang menggunakan fungsi tentukanKelulusan dengan dua parameter: n1 (nilai ujian) dan kehadiran (persentase kehadiran). Fungsi ini harus mengembalikan grade sesuai dengan ketentuan di atas.

// Uji program dengan data berikut:

// Mahasiswa 1: Nilai Ujian = 85, Kehadiran = 80
// Mahasiswa 2: Nilai Ujian = 70, Kehadiran = 65
// Mahasiswa 3: Nilai Ujian = 40, Kehadiran = 50

void main() {
  var nilaiUjian = 60;
  var kehadiran = 50;

  var mahasiswa = tentukanKelulusan(nilaiUjian, kehadiran);

  print(mahasiswa);
}

String tentukanKelulusan(n1, n2) {
  if (n1 >= 80 && n2 >= 70) {
    return 'A';
  } else if (n1 >= 50 && n1 <= 79 && n2 >= 60) {
    return 'B';
  } else {
    return 'Tidak Lulus';
  }
}
