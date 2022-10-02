import 'package:flutter/material.dart';
import 'package:ibuska/data/models/fakultas.dart';

class FakultasCard extends StatelessWidget {
  final Fakultas fakultas;

  const FakultasCard(this.fakultas, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ExpansionTile(
            backgroundColor: Colors.white,
            // Nama Fakultas
            title: Text(
              fakultas.nama,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: const SizedBox(),
            children: [
              // Title Halte Terdekat
              Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, left: 16.0, right: 16.0, bottom: 8.0),
                child: Row(
                  children: [
                    Text(
                      'Halte Terdekat',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
              // Halte Terdekat
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, left: 16.0, right: 16.0, bottom: 8.0),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        fakultas.halteTerdekat.toString(),
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                  ],
                ),
              ),
              // Title Deskripsi
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, left: 16.0, right: 16.0, bottom: 8.0),
                child: Row(
                  children: [
                    Text(
                      'Deskripsi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
              // Deskripsi
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, left: 16.0, right: 16.0, bottom: 16.0),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        fakultas.deskripsi,
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
