import 'package:flutter/material.dart';
import 'package:monassier_design/map_screen/google_map.dart';
import 'package:monassier_design/google_page/splash_page.dart';
import 'package:monassier_design/login_page.dart';
import 'package:monassier_design/welcome.dart';

import 'home_page.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  TimeOfDay _time= TimeOfDay.now();
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
                    "CONTACT",
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 50,
                  // color: Colors.black,
                  width: screenWidth / 1.5,
                  child: Column(
                    children: [
                      Text(
                        "L'Office Notarial",
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
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Container(
                    height: screenHeight / 2,
                    width: screenWidth,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1468348754239-3f973c649f90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8b3V0ZG9vciUyMG9mZmljZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                            fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 142.0),
                    child: Container(
                      height: screenHeight / 1.6,
                      width: screenWidth,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green.shade50,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.my_library_books_outlined,
                                            color: Colors.green.shade300,
                                          ),
                                        )),
                                    SizedBox(
                                      width: screenWidth / 25,
                                    ),
                                    Text(
                                      "L'Office Notarial",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: screenWidth / 20,
                                          color: Colors.blueGrey.shade900,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.green.shade300,
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth / 25,
                                    ),
                                    Container(
                                      height: screenHeight / 7,
                                      width: screenWidth / 1.8,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 30.0),
                                        child: Text(
                                          "3 rue Ernest Massoubre Immeuble Le Koneva,1er etage Orphelinat,98800 Noumea",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () async{
                                       TimeOfDay? time= await  showTimePicker(
                                              context: context,
                                              initialTime: TimeOfDay.now());
                                       if(time!=null){
                                         setState(() {
                                           _time=time;
                                         });
                                       }
                                        },
                                        child: Icon(
                                          Icons.access_time_sharp,
                                          color: Colors.green.shade300,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth / 25,
                                    ),
                                    Container(
                                      height: screenHeight / 7,
                                      width: screenWidth / 1.7,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 30.0),
                                        child: Text(
                                          "Du lundi au vendredi \n 7h30 a 11h30 \n 13h30 a 17h30",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 3,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.blue.shade700,
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth / 100,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => GMap(),
                                        ));
                                  },
                                  child: Text(
                                    'Localiser sur le plan',
                                    style: TextStyle(
                                        color: Colors.blue.shade700,
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth / 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.phone_enabled_outlined,
                                        color: Colors.blue.shade700,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  WelcomePage(),
                                            ));
                                      },
                                      child: Text(
                                        'Appeler',
                                        style: TextStyle(
                                            color: Colors.blue.shade700,
                                            fontWeight: FontWeight.bold,
                                            fontSize: screenWidth / 20),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.mail_outline,
                                        color: Colors.blue.shade700,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  SplashPage(),
                                            ));
                                      },
                                      child: Text(
                                        'Ecrire',
                                        style: TextStyle(
                                            color: Colors.blue.shade700,
                                            fontWeight: FontWeight.bold,
                                            fontSize: screenWidth / 20),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
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
