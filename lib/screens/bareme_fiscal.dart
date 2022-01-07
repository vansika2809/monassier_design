import 'package:flutter/material.dart';

import 'home_page.dart';

class BaremeFiscal extends StatefulWidget {
  const BaremeFiscal({Key? key}) : super(key: key);

  @override
  _BaremeFiscalState createState() => _BaremeFiscalState();
}

class _BaremeFiscalState extends State<BaremeFiscal> {
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
                  "BAREME FISCAL FIXANT LA VALEUR DE L'USUFRUIT",
                  style: TextStyle(
                    fontSize: 12,
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
                height: screenHeight / 7.5,
                // color: Colors.black,
                width: screenWidth ,
                child: Column(
                  children: [
                    Text(
                      "Selectionnez l'age de l'usefruitier",
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
                      'Age',
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: screenWidth / 22),
                    ),
                    Text(
                      'Moins de 61 ans revolus',
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
            padding: const EdgeInsets.only(left: 20.0,top: 30),
            child: Row(
              children: [
                Text(
                  "Valeur de l'usufruit",
                  style: TextStyle(
                      color: Colors.blueGrey.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth / 22),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 10,bottom: 10),
            child: Row(
              children: [
                Text(
                  '50%',
                  style: TextStyle(
                      color: Colors.grey.shade600,

                      fontSize: screenWidth / 25),
                ),
              ],
            ),
          ),
          Divider(endIndent: 20,thickness: 1,indent: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 20),
            child: Row(
              children: [
                Text(
                  'Valeue de la nue-propriete',
                  style: TextStyle(
                      color: Colors.blueGrey.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth / 22),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 10,bottom: 10),
            child: Row(
              children: [
                Text(
                  '50%',
                  style: TextStyle(
                      color: Colors.grey.shade600,

                      fontSize: screenWidth / 25),
                ),
              ],
            ),
          ),
          Divider(endIndent: 20,thickness: 1,indent: 20,),
          

        ],
      ),
    );
  }
}
