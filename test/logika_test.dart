void main() {
  nilaiAkhir(40);
  var n = nilaiAkhir(40);
  print(n);  
}

String nilaiAkhir(n1) {
  if (n1 >= 80) {
    return 'A';
  } else if (n1 <= 80 && n1 >= 50) {
    return 'B';
  } else {
    return 'Tidak Lulus';
  }
}
// Void 

// Function
