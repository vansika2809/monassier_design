import 'package:flutter/material.dart';

import 'home_page.dart';

class Le_Saviez extends StatefulWidget {
  const Le_Saviez({Key? key}) : super(key: key);

  @override
  _Le_SaviezState createState() => _Le_SaviezState();
}

class _Le_SaviezState extends State<Le_Saviez> {
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
              padding: const EdgeInsets.only(top: 20,left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: screenHeight / 9,
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
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: screenHeight / 1.7,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      height: screenHeight / 5,
                      width: screenWidth ,
                      decoration: BoxDecoration(
                        color: Colors.black,
                          image: DecorationImage(
                            image: NetworkImage('https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSfMhqQg43cXz6mOW8hm8tPXA8TST5-H1tDg30R6skCg8Tg-A9X'),
                            fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          ),
                      // color: Colors.black,
                    ),
Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Column(
    children: [
      Row(
        children: [
          Text(
            "CONTACT",
            style: TextStyle(
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
      SizedBox(height: screenHeight/50,),

      Row(
        children: [
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
      SizedBox(height: screenHeight/50,),
      Container(
        height: screenHeight / 10,
        // color: Colors.black,
        width: screenWidth,
        child: Column(
          children: [
            Text(
              "Lorem ipsum dolor sit ame,consec tetur adipiscing elit.",
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: TextStyle(
                  fontSize: screenWidth / 20,
                  color: Colors.grey,
                ),
            ),
          ],
        ),
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
                              Icons.visibility_outlined,
                              color: Colors.blue.shade700,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth / 100,
                          ),
                          Text(
                            "Lire l'article",
                            style: TextStyle(
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth/20
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
