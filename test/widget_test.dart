void main() {
  // Type Data & Variable
// Variable
  var mahasiswa = 'Mahasiswa 1';
  var umur = 20;
  print("$mahasiswa Umur : $umur");

// String
  String mahasiswaString = 'Mahasiswa 2';
  print(mahasiswaString);

// Integer
  int semester = 3;
  print(semester);

// Double
  // double ipk = 3.5;
  // print(ipk);
  double ipk;
  ipk = 3.5;
  print(ipk);

// Boolean

  // bool lakiLaki = false;
  // print(lakiLaki);

  bool benar = true;
  bool salah = false;
  bool tidakbenar = !true;
  bool tidaksalah = !false;

// List

  // List jurusan = [
  //   'Teknologi Informasi',
  //   'Mekatronika',
  //   'Bahasa Jepang',
  //   'Bisnis Digital'
  // ];

  // print(jurusan);

  List<String> jurusan = [
    'Teknologi Informasi',
    'Mekatronika',
    'Bahasa Jepang',
    'Bisnis Digital',
    semester.toString(),
    ipk.toString(),
  ];
  print(jurusan);

// Map

  Map mahasiswaMap = {"nama": "Sareh Azis Panegar", "Semester": 3};
  print(mahasiswaMap);
  print(mahasiswaMap['nama']);
  print(mahasiswaMap['Semester']);

// Operator
  int a, b;
  a = 40;
  b = 8;
  print('a - $a');
  print('b - $b');

  print(a + b); // Penjumalahan
  print(a - b); //Pengurangan
  print(a * b); // Perkalian
  print(a / b); // Pembagian
  print(a % b); // Sisa bagi
  print(a ~/ b); // Pembagian yang mengembalikan nilai integer

  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);
  print(a == b);
  print(a != b);
}
