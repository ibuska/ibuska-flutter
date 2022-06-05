import 'package:ibuska/data/catalogues/halte_bus_data.dart';
import 'package:ibuska/data/models/fakultas.dart';

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

Fakultas fkm = Fakultas(
  nama: "FKM",
  halteTerdekat: [halteFISIP],
  deskripsi: "Fakultas Kesehatan Masyarakat.",
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

List<Fakultas> daftarFakultas = [
  fh,
  rik,
  fkm,
  fik,
  fasilkomBaru,
  fmipa,
  vokasi,
  ft,
  feb,
  fib,
  fasilkomLama,
  fisip,
  fpsi,
];