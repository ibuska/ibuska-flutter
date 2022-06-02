import 'package:ibuska/data/models/fakultas.dart';
import 'package:ibuska/data/models/fasilitas.dart';
import 'package:ibuska/data/models/halte_bus.dart';

// Fasilitas
Fasilitas rsui = const Fasilitas(
  nama: "RSUI",
  tipe: "Rumah Sakit",
  deskripsi: "Rumah Sakit Universitas Indonesia.",
);

Fasilitas gerbangKutek = const Fasilitas(
  nama: "Gerbang Teknik",
  tipe: "Gerbang",
  deskripsi: "Gerbang menuju Kukusan Teknik (Kutek).",
);

Fasilitas gerbangKukel = const Fasilitas(
  nama: "Gerbang Vokasi",
  tipe: "Gerbang",
  deskripsi: "Gerbang menuju Kukusan Kelurahan (Kukel).",
);

Fasilitas stasiunUI = const Fasilitas(
  nama: "Stasiun UI",
  tipe: "Stasiun",
  deskripsi: "Stasiun KRL Universitas Indonesia.",
);

Fasilitas stasiunPocin = const Fasilitas(
  nama: "Stasiun Pondok Cina",
  tipe: "Stasiun",
  deskripsi: "Stasiun KRL Pondok Cina.",
);

Fasilitas masjidUI = const Fasilitas(
  nama: "Masjid UI",
  tipe: "Masjid",
  deskripsi: "Masjid Universitas Indonesia.",
);

Fasilitas asramaUI = const Fasilitas(
  nama: "Asrama UI",
  tipe: "Asrama",
  deskripsi: "Asrama Mahasiswa Universitas Indonesia.",
);

Fasilitas klinikSatelit = const Fasilitas(
  nama: "Klinik Satelit Makara UI",
  tipe: "Klinik",
  deskripsi: "Klinik Satelit Makara Universitas Indonesia.",
);

// Halte Bus
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
  fasilitas: [stasiunUI],
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
  nama: "SOR/Pusgiwa",
  fasilitas: [],
  deskripsi: "Halte Sarana Olahraga / Pusat Kegiatan Mahasiswa.",
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

// Fakultas
Fakultas fasilkomLama = Fakultas(
  nama: "Fasilkom Lama",
  halteTerdekat: [halteFIB],
  deskripsi: "Fakultas Ilmu Komputer, Gedung Lama.",
);

Fakultas fasilkomBaru = Fakultas(
  nama: "Fasilkom Baru",
  halteTerdekat: [halteFMIPA, halteFIK],
  deskripsi: "Fakultas Ilmu Komputer, Gedung Baru.",
);

Fakultas fia = Fakultas(
  nama: "FIA",
  halteTerdekat: [halteFISIP],
  deskripsi: "Fakultas Ilmu Administrasi.",
);

Fakultas vokasi = Fakultas(
  nama: "Vokasi",
  halteTerdekat: [halteVokasi],
  deskripsi: "Program Pendidikan Vokasi.",
);

Fakultas ft = Fakultas(
  nama: "FT",
  halteTerdekat: [halteFT],
  deskripsi: "Fakultas Teknik.",
);

Fakultas fh = Fakultas(
  nama: "FH",
  halteTerdekat: [halteFH],
  deskripsi: "Fakultas Hukum.",
);

Fakultas fpsi = Fakultas(
  nama: "FPsi",
  halteTerdekat: [halteFPsi],
  deskripsi: "Fakultas Psikologi.",
);

Fakultas feb = Fakultas(
  nama: "FEB",
  halteTerdekat: [halteFEB],
  deskripsi: "Fakultas Ekonomi dan Bisnis.",
);

Fakultas fisip = Fakultas(
  nama: "FISIP",
  halteTerdekat: [halteFISIP],
  deskripsi: "Fakultas Ilmu Sosial dan Ilmu Politik.",
);

Fakultas fik = Fakultas(
  nama: "FIK",
  halteTerdekat: [halteFIK],
  deskripsi: "Fakultas Ilmu Keperawatan.",
);

Fakultas fmipa = Fakultas(
  nama: "FMIPA",
  halteTerdekat: [halteFMIPA],
  deskripsi: "Fakultas Matematika dan Ilmu Pengetahuan Alam.",
);

Fakultas rik = Fakultas(
  nama: "RIK",
  halteTerdekat: [halteRIK],
  deskripsi: "Rumpun Ilmu Kesehatan.",
);

Fakultas fib = Fakultas(
  nama: "FIB",
  halteTerdekat: [halteFIB],
  deskripsi: "Fakultas Ilmu Budaya.",
);
