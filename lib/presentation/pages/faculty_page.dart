import 'package:flutter/material.dart';
import 'package:ibuska/common/dropdown_helper.dart';
import 'package:ibuska/data/catalogues/fakultas_data.dart';
import 'package:ibuska/data/models/fakultas.dart';
import 'package:ibuska/presentation/widgets/drawer_menu.dart';

class FacultyPage extends StatefulWidget {
  const FacultyPage({Key? key}) : super(key: key);
  static const routeName = '/faculty';

  @override
  State<FacultyPage> createState() => _FacultyPageState();
}

class _FacultyPageState extends State<FacultyPage> {
  var selectedFacultyTitle = "FH";
  Fakultas? selectedFaculty = daftarFakultas['FH'];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daftar Fakultas",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      drawer: const DrawerMenu(FacultyPage.routeName),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                bottom: screenHeight * 0.01,
              ),
              child: SizedBox(
                width: screenWidth,
                height: screenHeight * 0.2,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  child: Container(
                    alignment: Alignment.topCenter,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF6DB00),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: screenHeight * 0.015,
                          ),
                          child: Text(
                            "Pilih Fakultas",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenHeight * 0.035,
                            ),
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: screenHeight * 0.01,
                          ),
                          child: DropdownButton(
                            value: selectedFacultyTitle,
                            items: dropdownItems(daftarFakultas),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedFacultyTitle = newValue!;
                                selectedFaculty = daftarFakultas[newValue];
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.01,
                left: screenHeight * 0.05,
                right: screenHeight * 0.05,
              ),
              child: Row(
                children: [
                  const Text("Nama: "),
                  Text(selectedFaculty!.nama),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.01,
                left: screenHeight * 0.05,
                right: screenHeight * 0.05,
              ),
              child: Row(
                children: [
                  const Text("Halte Terdekat: "),
                  Text(selectedFaculty!.halteTerdekat.toString()),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.01,
                left: screenHeight * 0.05,
                right: screenHeight * 0.05,
              ),
              child: Row(
                children: [
                  const Text("Deskripsi: "),
                  Text(selectedFaculty!.deskripsi),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Menu',
        child: const CircleAvatar(
          backgroundImage: AssetImage("images/ibuska-logo.png"),
          // https://stackoverflow.com/a/61100541
          radius: 56,
        ),
      ),
    );
  }
}
