import 'package:flutter/material.dart';

import 'home_page.dart';

class VosNotaries extends StatefulWidget {
  const VosNotaries({Key? key}) : super(key: key);

  @override
  _VosNotariesState createState() => _VosNotariesState();
}

class _VosNotariesState extends State<VosNotaries> {
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
                    "VOS NOTAIRES",
                    style: TextStyle(
                        color: Colors.blue.shade900, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20, right: 40),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height:50,
                  // color: Colors.black,
                  width: screenWidth,
                  child: Column(
                    children: [
                      Text(
                        "Les notairres associes",
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
              child: Container(
                height: screenHeight / 3.2,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: screenHeight / 4.5,
                          width: screenWidth / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                                  fit: BoxFit.cover)),
                          // color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Catherine Lillaz',
                                    style: TextStyle(
                                        fontSize: screenWidth / 18,
                                        color: Colors.blueGrey.shade900,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight/25,),
                              Container(
                                height: screenHeight / 10,
                                // color: Colors.black,
                                width: screenWidth/3,
                                child: Column(
                                  children: [
                                    Text(
                                      "Droit immobilier,droit de la famille",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      style: TextStyle(
                                          fontSize: screenWidth / 22,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [ Row(

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.phone_enabled_outlined,
                              color: Colors.blue.shade700,
                            ),
                          ),

                          Text(
                            'Appeler',
                            style: TextStyle(
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth/20
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

                            Text(
                              'Ecrire',
                              style: TextStyle(
                                  color: Colors.blue.shade700,
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth/20
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: screenHeight / 3.2,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: screenHeight / 4.5,
                          width: screenWidth / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1507591064344-4c6ce005b128?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                                  fit: BoxFit.cover)),
                          // color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Jean-Daniel Burte',
                                    style: TextStyle(
                                        fontSize: screenWidth / 20,
                                        color: Colors.blueGrey.shade900,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight/25,),
                              Container(
                                height: screenHeight / 10,
                                // color: Colors.black,
                                width: screenWidth/3,
                                child: Column(
                                  children: [
                                    Text(
                                      "Droit des affaires fiscalite",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      style: TextStyle(
                                          fontSize: screenWidth / 22,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [ Row(

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.phone_enabled_outlined,
                              color: Colors.blue.shade700,
                            ),
                          ),

                          Text(
                            'Appeler',
                            style: TextStyle(
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth/20
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

                            Text(
                              'Ecrire',
                              style: TextStyle(
                                  color: Colors.blue.shade700,
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth/20
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
