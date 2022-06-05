import 'package:ibuska/data/models/fasilitas.dart';

class HalteBus {
  const HalteBus({
    required this.nama,
    required this.fasilitas,
    required this.deskripsi,
  });

  final String nama;
  final List<Fasilitas> fasilitas;
  final String deskripsi;

  @override
  String toString() {
    return nama;
  }
}
