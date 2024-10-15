// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_pertama/main.dart';

void main() {
  // Type Data & Variable

// Variable
  var mahasiswa = 'Mahasiswa 1';
  var umur = 20;
  print(mahasiswa + " Umur : " + umur.toString());

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
}
