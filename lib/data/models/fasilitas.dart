class Fasilitas {
  const Fasilitas({
    required this.nama,
    required this.tipe,
    required this.deskripsi,
  });

  final String nama;
  final String tipe;
  final String deskripsi;

  @override
  String toString() {
    return nama;
  }
}
