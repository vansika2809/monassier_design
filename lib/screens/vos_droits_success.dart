import 'package:flutter/material.dart';
import 'package:monassier_design/screens/bareme_fiscal.dart';
import 'package:monassier_design/screens/donation_et.dart';
import 'package:monassier_design/screens/droit_de_succession.dart';
import 'package:monassier_design/screens/exoneration.dart';

import 'home_page.dart';

class VosDroits extends StatefulWidget {
  const VosDroits({Key? key}) : super(key: key);

  @override
  _VosDroitsState createState() => _VosDroitsState();
}

class _VosDroitsState extends State<VosDroits> {
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
                  "VOS DROITS DE SUCCESSION",
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
                width: screenWidth,
                child: Column(
                  children: [
                    Text(
                      "Tout sur les droits de succession",
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
            padding: const EdgeInsets.only(left: 20.0, right: 20,top: 15),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Exoneration(),));
              },
              child: Container(
                height: screenHeight / 9,
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
                            height: screenHeight / 15,
                            width: screenWidth / 2.5,
                            child: Text(
                              "Exoneations et abattement",
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
            padding: const EdgeInsets.only(left: 20.0, right: 20,top: 15),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DroitsDe(),));
              },
              child: Container(
                height: screenHeight / 9,
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
                          Text(
                            "Droits de succession",
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20,top: 15),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BaremeFiscal(),));
              },
              child: Container(
                height: screenHeight / 9,
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
                            height: screenHeight / 15,
                            width: screenWidth / 1.8,
                            child: Text(
                              "Bareme fiscal fixant la valeur de l'usefruit",
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => Donation(),));
              },
              child: Container(
                height: screenHeight / 9,
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
                          Text(
                            "Donations et testaments",
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
