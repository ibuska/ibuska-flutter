import 'package:ibuska/data/catalogues/fasilitas_data.dart';
import 'package:ibuska/data/models/halte_bus.dart';

HalteBus halteAsrama = HalteBus(
  nama: "Asrama",
  fasilitas: [asramaUI],
  deskripsi: "Halte Asrama Mahasiswa.",
);

HalteBus halteMenwa = const HalteBus(
  nama: "Menwa",
  fasilitas: [],
  deskripsi: "Halte Resimen Mahasiswa.",
);

HalteBus halteStasiun = HalteBus(
  nama: "Stasiun UI",
  fasilitas: [stasiunUI, halteBusUI],
  deskripsi: "Halte Stasiun Universitas Indonesia.",
);

HalteBus halteFH = const HalteBus(
  nama: "FH",
  fasilitas: [],
  deskripsi: "Halte Fakultas Hukum.",
);

HalteBus haltePocin = HalteBus(
  nama: "Pondok Cina",
  fasilitas: [stasiunPocin],
  deskripsi: "Halte Pondok Cina.",
);

HalteBus halteMasjid = HalteBus(
  nama: "Masjid UI",
  fasilitas: [masjidUI],
  deskripsi: "Halte Masjid Universitas Indonesia.",
);

HalteBus halteRIK = const HalteBus(
  nama: "RIK",
  fasilitas: [],
  deskripsi: "Halte Rumpun Ilmu Kesehatan.",
);

HalteBus halteFKM = HalteBus(
  nama: "FKM",
  fasilitas: [rsui],
  deskripsi: "Halte Fakultas Kesehatan Masyarakat.",
);

HalteBus halteFIK = const HalteBus(
  nama: "FIK",
  fasilitas: [],
  deskripsi: "Halte Fakultas Ilmu Keperawatan.",
);

HalteBus halteFMIPA = const HalteBus(
  nama: "FMIPA",
  fasilitas: [],
  deskripsi: "Halte Fakultas Matematika dan Ilmu Pengetahuan Alam.",
);

HalteBus halteSOR = const HalteBus(
  nama: "SOR",
  fasilitas: [],
  deskripsi: "Halte Sarana Olahraga.",
);

HalteBus haltePusgiwa = const HalteBus(
  nama: "Pusgiwa",
  fasilitas: [],
  deskripsi: "Halte Pusat Kegiatan Mahasiswa.",
);

HalteBus halteVokasi = HalteBus(
  nama: "Vokasi",
  fasilitas: [gerbangKukel],
  deskripsi: "Halte Program Pendidikan Vokasi.",
);

HalteBus halteFT = HalteBus(
  nama: "FT",
  fasilitas: [klinikSatelit, gerbangKutek],
  deskripsi: "Halte Fakultas Teknik.",
);

HalteBus halteFEB = const HalteBus(
  nama: "FEB",
  fasilitas: [],
  deskripsi: "Halte Fakultas Ekonomi dan Bisnis.",
);

HalteBus halteFIB = const HalteBus(
  nama: "FIB",
  fasilitas: [],
  deskripsi: "Halte Fakultas Ilmu Budaya.",
);

HalteBus halteFISIP = const HalteBus(
  nama: "FISIP",
  fasilitas: [],
  deskripsi: "Halte Fakultas Ilmu Sosial dan Ilmu Politik.",
);

HalteBus halteFPsi = const HalteBus(
  nama: "FPsi",
  fasilitas: [],
  deskripsi: "Halte Fakultas Psikologi.",
);