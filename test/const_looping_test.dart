void main() {
  // final keyword => imutable / nilai tidak bisa diubah

  final String mahasiswa;
  mahasiswa = 'Sareh';
  print(mahasiswa);

  // nullsafety
  // -> ? ! late
  // dia -> ? boleh null
  // String? jurusan;

  late String jurusan;
  jurusan = 'Teknologi Informasi';
  print(jurusan.length);

  // perulangan looping
  // for plus
  for (int no = 1; no <= 5; no++) {
    print(no);
  }

  // for minus
  for (int no = 5; no >= 1; no--) {
    print(no);
  }

  // while
  int no1 = 1;
  while (no1 <= 5) {
    print(no1);
    no1++;
  }

  // do while
  int no2 = 1;
  do {
    print(no2);
    no2++;
  } while (no2 <= 10);
}
