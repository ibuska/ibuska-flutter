import 'package:ibuska/data/models/fasilitas.dart';

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
  deskripsi: "Masjid Masjid Ukhuwah Islamiyah Universitas Indonesia.",
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

Fasilitas halteBusUI = const Fasilitas(
  nama: "Halte Bus Transjakarta UI",
  tipe: "Halte Transjakarta",
  deskripsi: "Halte Bus Transjakarta Universitas Indonesia.",
);

List<Fasilitas> daftarFasilitasRaw = [
  halteBusUI,
  asramaUI,
  stasiunUI,
  stasiunPocin,
  masjidUI,
  rsui,
  klinikSatelit,
  gerbangKukel,
  gerbangKutek
];

Map<String, Fasilitas> daftarFasilitas = {
  for (var fasilitas in daftarFasilitasRaw) fasilitas.toString(): fasilitas
};
