import 'package:flutter/material.dart';
import 'package:ibuska/presentation/pages/home_page.dart';

class DrawerMenu extends StatelessWidget {
  final String route;

  const DrawerMenu(this.route, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {    
    return Drawer(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            // ignore: sized_box_for_whitespace
            Container(
              width: double.infinity,
              height: 64,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFF6DB00),
                ),
                child: Text(
                  'Informasi Bus Kampus',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  ListTile(
                    title: const Text('Beranda'),
                    onTap: () {
                      route == HomePage.routeName
                        ? Navigator.pop(context)
                        : Navigator.pushReplacementNamed(context, HomePage.routeName);
                    },
                  ),
                  ListTile(
                    title: const Text('Posisi Bus'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Jadwal Bus'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Rute Bus'),
                    onTap: () {},
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Daftar Fakultas'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Daftar Fasilitas'),
                    onTap: () {},
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Kontak Kami'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}