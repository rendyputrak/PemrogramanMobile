void main() {
  // var record = ('first', a: 2, b: true, 'last');

  // var record = (1, 2);
  // var testukar = tukar(record);
  // print(testukar);

  // (String, int) mahasiswa = ('Rendy Putra Kusuma', 2241720124);
  // print(mahasiswa);

  var mahasiswa2 = ('Rendy Putra Kusuma', a: 2241720124, b: true, 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
