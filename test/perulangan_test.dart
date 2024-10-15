
void main() {
//   Conditional
  var nilai;
  nilai = 30;

  if (nilai >= 80) {
    print('A');
  } else if (nilai <= 80 && nilai >= 50) {
    print('B');
  } else {
    print('Tidak Lulus');
  }

  print('---------------');
  nilai >= 80 ? print('A') : print('B');

  // Function
  print("function");

  hitungNilai();
  hitungNilai1(80, 90);
  var p = hitungNilai1(100, 90);
  print(p);
  var n = hitungNilai2(mapel1: 80, mapel2: 90);
  print(n);
  var o = hitungNilai3(50, 90);
}

hitungNilai() {
  print("Hitung Nilai");
}

// Positional Parameter

// Jika menggunakan int harus mengembalikan int ketika dipanggil
int hitungNilai1(mapel1, mapel2, [mapel3]) {
  var total;
  if (mapel3 != null) {
    total = mapel1 + mapel2 + mapel3;
  } else {
    total = mapel1 + mapel2;
  }

  return total;
}

// Named Parameter
hitungNilai2({mapel1, mapel2}) {
  var total;
  if (mapel2 != null) {
    total = mapel1 + mapel2;
  } else {
    total = mapel1 + mapel2;
  }

  return total;
}

// Void
void hitungNilai3(mapel1, mapel2) {
  var total = mapel1 + mapel2;
  print(total);
}
