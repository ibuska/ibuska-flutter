import 'package:flutter/material.dart';
import 'package:ibuska/presentation/pages/faculty_page.dart';
import 'package:ibuska/presentation/pages/home_page.dart';

class DrawerMenu extends StatefulWidget {
  final String route;
  const DrawerMenu(this.route, {Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;

    return Drawer(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            // ignore: sized_box_for_whitespace
            Container(
              width: double.infinity,
              height: 64,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(0xFFF6DB00),
                ),
                child: Text(
                  'Informasi Bus Kampus',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenHeight * 0.035,
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
                      widget.route == HomePage.routeName
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
                    onTap: () {
                      widget.route == FacultyPage.routeName
                        ? Navigator.pop(context)
                        : Navigator.pushReplacementNamed(context, FacultyPage.routeName);
                    },
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