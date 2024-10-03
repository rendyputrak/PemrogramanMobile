void main() {
  String nama = "Rendy Putra Kusuma";
  String nim = "2241720124";

  bool prima(int number) {
    if (number < 2) return false;
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

  for (int i = 0; i <= 201; i++) {
    if (prima(i)) {
      print("Angka $i adalah bilangan prima");
      print("Nama: $nama");
      print("NIM: $nim");
    } else {
      print(i);
    }
  }
}
