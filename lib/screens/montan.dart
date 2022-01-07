import 'package:flutter/material.dart';

import 'home_page.dart';

class Montant extends StatefulWidget {
  const Montant({Key? key}) : super(key: key);

  @override
  _MontantState createState() => _MontantState();
}

class _MontantState extends State<Montant> {
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
                    "LE MONTANT DE VOTRE EMPRUNT",
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
                  height: screenHeight / 9,
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
                height: screenHeight / 15,
                width: screenWidth,
                child: Text(
                  "Simulez le montant de vos mensulites en quelques secondes.",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
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
                        'Mensulites',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: screenWidth / 22),
                      ),
                      Text(
                        '118 576 XPF',
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
                        'Duree du pret',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: screenWidth / 22),
                      ),
                      Text(
                        '25 ans',
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
                        'Taux du pret',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: screenWidth / 22),
                      ),
                      Text(
                        '1,4%',
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
              padding: const EdgeInsets.only(bottom: 20.0,top: 150),
              child: MaterialButton(
                onPressed: () {},
                color: Colors.blue.shade700,
                minWidth: screenWidth / 1.2,
                height: screenHeight / 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'Calculer mes mensualites',
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
