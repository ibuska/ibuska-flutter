import 'package:ibuska/data/models/halte_bus.dart';

class Fakultas {
  const Fakultas({
    required this.nama,
    required this.halteTerdekat,
    required this.deskripsi,
  });

  final String nama;
  final List<HalteBus> halteTerdekat;
  final String deskripsi;

  @override
  String toString() {
    return nama;
  }
}
