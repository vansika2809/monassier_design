import 'package:flutter/material.dart';

import 'home_page.dart';

class SimulezFrais extends StatefulWidget {
  const SimulezFrais({Key? key}) : super(key: key);

  @override
  _SimulezFraisState createState() => _SimulezFraisState();
}

class _SimulezFraisState extends State<SimulezFrais> {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Text(
                  "SIMULEZ VOS FRAIS DE NOTAIRE",
                  style: TextStyle(
                      color: Colors.blue.shade900, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20,bottom: 20),
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
            padding: const EdgeInsets.only(left: 20.0, right: 20),
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
                      'Prix de vente',
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: screenWidth / 22),
                    ),
                    Text(
                      '25 000 000 XPF',
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
                      'Pret demande',
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: screenWidth / 22),
                    ),
                    Text(
                      '30 000 000 XPF',
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
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 25),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              height: screenHeight / 15,
              width: screenWidth,
              child: Text(
                "Simulateur non utilisable pour les biens vendeus en etat futur d'achevement(VEFA)",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                    fontSize: screenWidth / 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 200),
            child: MaterialButton(
              onPressed: () {},
              color: Colors.blue.shade700,
              minWidth: screenWidth,
              height: screenHeight / 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                "Calculer mes frais d'acquisition",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth / 22),
              ),
            ),
          )
        ],
      ),
    );
  }
}
