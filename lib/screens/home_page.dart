import 'package:flutter/material.dart';
import 'package:monassier_design/screens/frais_acquisition.dart';
import 'package:monassier_design/screens/la_saviez.dart';
import 'package:monassier_design/screens/vos_droits_success.dart';
import 'package:monassier_design/screens/vos_notarires.dart';

double screenWidth = 0;
double screenHeight = 0;

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      // drawer: Drawer(),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth / 2,
                  height: screenHeight / 8,
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/f/f1/LogoGMO.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight/20,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Stack(children: [
                GestureDetector(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FraisAcquisition(),));
                  },
                  child: Container(
                    height: screenHeight / 6.5,
                    width: screenWidth,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: screenHeight / 7,
                            width: screenWidth / 1.5,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0, top:5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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

                                  Row(
                                    children: [
                                      Text(
                                        "Calculex vos frais ",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.blueGrey.shade700,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        " d' acquisition",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.blueGrey.shade700,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ClipPath(
                  clipper: TrapeziumClipper(),
                  child: Container(
                    height: screenHeight / 6.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://media.istockphoto.com/photos/door-lock-key-picture-id478363288?b=1&k=20&m=478363288&s=170667a&w=0&h=CcfJZ30pvCOiiyL7nIwf0vw7tJJaRi6uBZkq1BToENw='),
                          fit: BoxFit.fill),
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Stack(
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => VosDroits(),));
                    },
                    child: Container(
                      height: screenHeight / 6.5,
                      width: screenWidth,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 1.5,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 30.0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green.shade50,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.transgender_rounded,
                                            color: Colors.green.shade300,
                                          ),
                                        )),

                                    Row(
                                      children: [
                                        Text(
                                          "Vos droits ",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.blueGrey.shade700,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "de succession",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.blueGrey.shade700,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipPath(
                    clipper: TrapeziumClipper(),
                    child: Container(
                      height: screenHeight / 6.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://media.istockphoto.com/photos/family-vacation-holiday-happy-family-running-on-the-beach-in-the-picture-id1299265795?b=1&k=20&m=1299265795&s=170667a&w=0&h=_E7ptBvGfeg9qNN_V1n_Ta0aU0WdD9mMkuXRP9MDqbM='),
                            fit: BoxFit.cover),
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0,top: 10),
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => VosNotaries(),));
                        },
                        child: Container(

                          width: screenWidth / 2.5,
                          height: screenHeight / 5,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: NetworkImage('https://images.unsplash.com/photo-1568992687947-868a62a9f521?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8b2ZmaWNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                              fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100.0),
                        child: Container(

                          width: screenWidth/2.5,
                          height: screenHeight/12,
                          decoration: BoxDecoration(
                              color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)
                            )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0,left: 15),
                            child: Text(
                              "Notre equipe",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blueGrey.shade700,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0,top: 80),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green.shade50,
                                borderRadius:
                                BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.people_alt_outlined,
                                color: Colors.green.shade300,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0,top: 10),
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Le_Saviez(),));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: NetworkImage('https://media.istockphoto.com/photos/door-to-office-picture-id178842131?b=1&k=20&m=178842131&s=170667a&w=0&h=45iCO1nO7rvQS8NITsFmh4XQ_nIJfZ3-MVyP82ythdg='),
                              fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: screenWidth / 2.5,
                          height: screenHeight / 5,
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(top: 100.0),
                         child: Container(
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.only(
                                   bottomRight: Radius.circular(20),
                                   bottomLeft: Radius.circular(20)
                               )
                           ),
                            width: screenWidth/2.5,
                            height: screenHeight/12,
                           child: Padding(
                             padding: const EdgeInsets.only(top: 20.0,left: 15),
                             child: Text(
                               "Nos actualites",
                               overflow: TextOverflow.ellipsis,
                               maxLines: 2,
                               style: TextStyle(
                                   fontSize: 18,
                                   color: Colors.blueGrey.shade700,
                                   fontWeight: FontWeight.bold),
                             ),
                           ),
                          ),
                       ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0,top: 80),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green.shade50,
                                borderRadius:
                                BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                               Icons.speaker_phone_sharp,
                                color: Colors.green.shade300,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TrapeziumClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width * 3 / 4, 0.0);
    path.lineTo(size.width * 50 / 100, size.height);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(TrapeziumClipper oldClipper) => false;
}
