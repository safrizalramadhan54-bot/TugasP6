class Mahasiswa {
  Mahasiswa(this.nama, this.umur, this.ttl);
  final String nama;
  final int umur;
  final String ttl;
}

void main() {
  print("Data Mahasiswa:");
  final i = Mahasiswa("Safrizal Ramadhan", 20, "Jakarta, 10 Jan 2004");
  print(i.nama);
}