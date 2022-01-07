import 'package:flutter/material.dart';

import 'home_page.dart';

class Exoneration extends StatefulWidget {
  const Exoneration({Key? key}) : super(key: key);

  @override
  _ExonerationState createState() => _ExonerationState();
}

class _ExonerationState extends State<Exoneration> {
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
                      'Bneficiaires',
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: screenWidth / 22),
                    ),
                    Text(
                      'Conjoint ou pacse',
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
                  'Successions',
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
                  'Exoneration',
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
                  'Donation',
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
                  '9 000 000 XPF',
                  style: TextStyle(
                      color: Colors.grey.shade600,

                      fontSize: screenWidth / 25),
                ),
              ],
            ),
          ),
          Divider(endIndent: 20,thickness: 1,indent: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 25),
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
        ],
      ),
    );
  }
}
