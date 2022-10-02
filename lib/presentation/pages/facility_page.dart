import 'package:flutter/material.dart';
import 'package:ibuska/common/dropdown_helper.dart';
import 'package:ibuska/data/catalogues/fasilitas_data.dart';
import 'package:ibuska/data/models/fasilitas.dart';
import 'package:ibuska/presentation/widgets/drawer_menu.dart';

class FacilityPage extends StatefulWidget {
  const FacilityPage({Key? key}) : super(key: key);
  static const routeName = '/facility';

  @override
  State<FacilityPage> createState() => _FacilityPageState();
}

class _FacilityPageState extends State<FacilityPage> {
  var selectedFacilityTitle = "Halte Bus Transjakarta UI";
  Fasilitas? selectedFacility = daftarFasilitas["Halte Bus Transjakarta UI"];
  
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daftar Fasilitas",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      drawer: const DrawerMenu(FacilityPage.routeName),
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
                            "Pilih Fasilitas",
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
                            value: selectedFacilityTitle,
                            items: dropdownItems(daftarFasilitas),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedFacilityTitle = newValue!;
                                selectedFacility = daftarFasilitas[newValue];
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
                  Text(selectedFacility!.nama),
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
                  Text(selectedFacility!.deskripsi),
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
