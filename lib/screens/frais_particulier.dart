import 'package:flutter/material.dart';
import 'package:monassier_design/screens/simulateur_de.dart';
import 'package:monassier_design/screens/simulez_frais.dart';

import 'home_page.dart';

class FraisParticulier extends StatefulWidget {
  const FraisParticulier({Key? key}) : super(key: key);

  @override
  _FraisParticulierState createState() => _FraisParticulierState();
}

class _FraisParticulierState extends State<FraisParticulier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
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
                  "PARTICULIER",
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
                width: screenWidth /1.2,
                child: Column(
                  children: [
                    Text(
                      "Que souhaitez-vous faire?",
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
            child: GestureDetector(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>SimulezFrais()));
              },
              child: Container(
                height: screenHeight / 9.5,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.green.shade50,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Icon(
                                  Icons.transgender_rounded,
                                  color: Colors.green.shade300,
                                ),
                              )),
                          SizedBox(
                            width: screenWidth / 20,
                          ),
                          Container(
                            height: screenHeight / 3,
                            width: screenWidth / 2.3,
                            child: Text(
                              "Simulez vos frais de notaire",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: screenWidth / 20,
                                  color: Colors.blueGrey.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.blue.shade900,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Simulateur(),));
              },
              child: Container(
                height: screenHeight / 10,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.green.shade50,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Icon(
                                  Icons.account_balance_outlined,
                                  color: Colors.green.shade300,
                                ),
                              )),
                          SizedBox(
                            width: screenWidth / 20,
                          ),
                          Text(
                            "Simulateur de pret",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: screenWidth / 20,
                                color: Colors.blueGrey.shade900,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.blue.shade900,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
