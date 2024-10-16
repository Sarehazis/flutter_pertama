// Studi Kasus: Penentuan Diskon di Toko

// Sebuah toko memberikan diskon kepada pelanggan berdasarkan total pembelian dan status keanggotaan mereka. Aturan diskon diberikan sebagai berikut:

// Jika pelanggan adalah anggota (isMember = true) dan total pembelian (totalBelanja) lebih besar atau sama dengan 500 ribu, maka pelanggan mendapatkan diskon 20%.
// Jika pelanggan bukan anggota (isMember = false) tetapi total pembelian lebih besar atau sama dengan 500 ribu, maka pelanggan mendapatkan diskon 10%.
// Jika total pembelian kurang dari 500 ribu, pelanggan tidak mendapatkan diskon.
// Buatlah sebuah program yang menggunakan fungsi hitungDiskon dengan dua parameter: totalBelanja (total pembelian) dan isMember (status keanggotaan). Fungsi ini harus mengembalikan jumlah diskon yang didapat oleh pelanggan.

// Uji program dengan data berikut:

// Pelanggan 1: Total Belanja = 600 ribu, Anggota = true
// Pelanggan 2: Total Belanja = 550 ribu, Anggota = false
// Pelanggan 3: Total Belanja = 300 ribu, Anggota = true

void main() {
  var totalBelanja = 1000;
  var member = true;

  var diskon = hitungDiskon(totalBelanja, member);

  print(diskon);
}

String hitungDiskon(totalBelanja, member) {
  if (member == true && totalBelanja >= 500) {
    return '20%';
  } else if (member == false && totalBelanja >= 500) {
    return '10%';
  } else {
    return 'Tidak ada diskon';
  }
}
