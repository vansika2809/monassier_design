import 'package:flutter/material.dart';

import 'home_page.dart';

class DroitsDe extends StatefulWidget {
  const DroitsDe({Key? key}) : super(key: key);

  @override
  _DroitsDeState createState() => _DroitsDeState();
}

class _DroitsDeState extends State<DroitsDe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 15,
            color: Colors.blue.shade900,
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                    "DROITS DE SUCCESSION",
                    style: TextStyle(
                        color: Colors.blue.shade900, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: screenHeight / 9,
                  // color: Colors.black,
                  width: screenWidth ,
                  child: Column(
                    children: [
                      Text(
                        "Tout savoir sur les droits de succession",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: screenWidth / 12,
                            color: Colors.blueGrey.shade900,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30),
              child: Row(
                children: [
                  Text(
                    'Entre conjoints ou pacses',
                    style: TextStyle(
                        color: Colors.blueGrey.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth / 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 20, bottom: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'FRACTION PART TAXABLE*',
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth / 28),
                  ),
                  Text(
                    'TAUX',
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth / 28),
                  ),
                ],
              ),
            ),
            Divider(
              endIndent: 20,
              thickness: 1,
              indent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 20, bottom: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '< 1 000 000 XPF',
                    style: TextStyle(
                        color: Colors.grey.shade600, fontSize: screenWidth / 22),
                  ),
                  Text(
                    '5%',
                    style: TextStyle(
                        color: Colors.grey.shade600, fontSize: screenWidth / 22),
                  ),
                ],
              ),
            ),
            Divider(
              endIndent: 20,
              thickness: 1,
              indent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 20, bottom: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: screenHeight / 15,
                    // color: Colors.black,
                    width: screenWidth / 2.5,
                    child: Column(
                      children: [
                        Text(
                          "Enter 1 000 000 XPF at 3 000 000 XPF",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: screenWidth / 22),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '10%',
                    style: TextStyle(
                        color: Colors.grey.shade600, fontSize: screenWidth / 22),
                  ),
                ],
              ),
            ),
            Divider(
              endIndent: 20,
              thickness: 1,
              indent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 20, bottom: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: screenHeight / 15,
                    // color: Colors.black,
                    width: screenWidth / 2.5,
                    child: Column(
                      children: [
                        Text(
                          "Enter 3 000 000 XPF at 10 000 000 XPF",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: screenWidth / 22),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '15%',
                    style: TextStyle(
                        color: Colors.grey.shade600, fontSize: screenWidth / 22),
                  ),
                ],
              ),
            ),
            Divider(
              endIndent: 20,
              thickness: 1,
              indent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 20, bottom: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '> 10 000 000 XPF',
                    style: TextStyle(
                        color: Colors.grey.shade600, fontSize: screenWidth / 22),
                  ),
                  Text(
                    '20%',
                    style: TextStyle(
                        color: Colors.grey.shade600, fontSize: screenWidth / 22),
                  ),
                ],
              ),
            ),
            Divider(
              endIndent: 20,
              thickness: 1,
              indent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                height: screenHeight / 15,
                width: screenWidth,
                child: Text(
                  "*(au-dela de l'eventuel abattement)",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: screenWidth / 22,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: screenHeight / 15,
                  // color: Colors.black,
                  width: screenWidth / 1.5,
                  child: Column(
                    children: [
                      Text(
                        "Non -parent(Concubin,non pacse et non marie)",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: screenWidth / 22,
                            color: Colors.blueGrey.shade900,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 40, right: 20),
              child: Row(
                children: [
                  Text(
                    'Le taux est de 50%',
                    style: TextStyle(
                        color: Colors.grey.shade600, fontSize: screenWidth / 22),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Text(
                      "Entre freres et soeurs",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: screenWidth / 22,
                          color: Colors.blueGrey.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 10, bottom: 40, right: 20),
              child: Row(
                children: [
                  Text(
                    'Le taux est de 50%',
                    style: TextStyle(
                        color: Colors.grey.shade600, fontSize: screenWidth / 22),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Text(
                      "Entre collateraux jusqu'au 4eme degre",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: screenWidth / 22,
                          color: Colors.blueGrey.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 10, bottom: 60, right: 20),
              child: Row(
                children: [
                  Text(
                    'Le taux est de 40%',
                    style: TextStyle(
                        color: Colors.grey.shade600, fontSize: screenWidth / 22),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
