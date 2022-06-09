import 'package:flutter/material.dart';

class Bus {
  const Bus({
    required this.kode,
    required this.warna,
    required this.jamKeberangkatan,
  });

  final String kode;
  final String warna;
  final TimeOfDay jamKeberangkatan;

  @override
  String toString() {
    return kode;
  }
}
