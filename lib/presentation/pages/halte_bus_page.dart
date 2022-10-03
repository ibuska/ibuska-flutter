import 'package:flutter/material.dart';
import 'package:ibuska/common/dropdown_helper.dart';
import 'package:ibuska/data/catalogues/halte_bus_data.dart';
import 'package:ibuska/data/models/halte_bus.dart';
import 'package:ibuska/presentation/widgets/drawer_menu.dart';

class HalteBusPage extends StatefulWidget {
  const HalteBusPage({Key? key}) : super(key: key);
  static const routeName = '/halte-bus';

  @override
  State<HalteBusPage> createState() => _HalteBusPageState();
}

class _HalteBusPageState extends State<HalteBusPage> {
  var selectedHalteBusTitle = "Asrama";
  HalteBus? selectedHalteBus = daftarHalteBus['Asrama'];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daftar Halte Bus",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      drawer: const DrawerMenu(HalteBusPage.routeName),
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
                            "Pilih Halte Bus",
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
                            value: selectedHalteBusTitle,
                            items: dropdownItems(daftarHalteBus),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedHalteBusTitle = newValue!;
                                selectedHalteBus = daftarHalteBus[newValue];
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
                  Text(selectedHalteBus!.nama),
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
                  Text(selectedHalteBus!.deskripsi),
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
                  const Text("Fasilitas Terdekat: "),
                  Text(selectedHalteBus!.fasilitas.toString()),
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
