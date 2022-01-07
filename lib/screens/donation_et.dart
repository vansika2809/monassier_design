import 'package:flutter/material.dart';

import 'home_page.dart';

class Donation extends StatefulWidget {
  const Donation({Key? key}) : super(key: key);

  @override
  _DonationState createState() => _DonationState();
}

class _DonationState extends State<Donation> {
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
                    "SIMULEZ VOS FRAIS DE NOTAIRE",
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: screenHeight / 8,
                  // color: Colors.black,
                  width: screenWidth / 1.5,
                  child: Column(
                    children: [
                      Text(
                        "Estimez vos frais de notaire.",
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
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                height: screenHeight / 10,
                width: screenWidth,
                child: Text(
                  "*Le partenaire de PACS n'ebt pas heritier de par la loi.Il faut immperativent prevoir un testament a son profit.",
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
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: screenHeight / 15,
                width: screenWidth,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Projet',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: screenWidth / 22),
                      ),
                      Text(
                        'Proteger mon conjoint',
                        style: TextStyle(
                            color: Colors.blueGrey.shade900,
                            fontSize: screenWidth / 22),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: screenHeight / 15,
                width: screenWidth,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Detais',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: screenWidth / 22),
                      ),
                      Text(
                        'Immediat',
                        style: TextStyle(
                            color: Colors.blueGrey.shade900,
                            fontSize: screenWidth / 22),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: screenHeight / 15,
                width: screenWidth,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nom',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: screenWidth / 22),
                      ),
                      Text(
                        'Michel',
                        style: TextStyle(
                            color: Colors.blueGrey.shade900,
                            fontSize: screenWidth / 22),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: screenHeight / 15,
                width: screenWidth,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Prenom',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: screenWidth / 22),
                      ),
                      Text(
                        'Durand',
                        style: TextStyle(
                            color: Colors.blueGrey.shade900,
                            fontSize: screenWidth / 22),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: screenHeight / 15,
                width: screenWidth,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Telephone',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: screenWidth / 22),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ou',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade600,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: screenHeight / 15,
                width: screenWidth,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: screenWidth / 22),
                      ),
                      Text(
                        'michel.durand@gmail.com',
                        style: TextStyle(
                            color: Colors.blueGrey.shade900,
                            fontSize: screenWidth / 22),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, top: 20, bottom: 40),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: screenHeight / 4,
                width: screenWidth,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 8,
                    style: TextStyle(
                        color: Colors.blueGrey.shade900,
                        fontSize: screenWidth / 22),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: MaterialButton(
                onPressed: () {},
                color: Colors.blue.shade700,
                minWidth: screenWidth / 1.2,
                height: screenHeight / 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'Etre recontacte',
                  style: TextStyle(
                      color: Colors.white, fontSize: screenWidth / 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
