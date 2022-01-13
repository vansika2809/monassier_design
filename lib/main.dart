
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:monassier_design/providers/auth_provider.dart';
import 'package:monassier_design/providers/chat_provider.dart';
import 'package:monassier_design/providers/home_provider.dart';
import 'package:monassier_design/providers/setting_provider.dart';

import 'package:monassier_design/screens/contact.dart';
import 'package:monassier_design/screens/frais_acquisition.dart';
import 'package:monassier_design/screens/home_page.dart';
import 'package:monassier_design/screens/vos_droits_success.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants/app_constants.dart';
import 'constants/color_constants.dart';
import 'google_page/splash_page.dart';

main()async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MaterialApp(
    home: MyApp(prefs: prefs),

    debugShowCheckedModeBanner: false,
  ));
}


/*
class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int _selectedIndex = 0;
  int color=0;
  final _bottomNavigationBarColor = Colors.white;

  // late PageController _pageController;
  List<Widget> _widgetOptions = <Widget>[
    HomePage2(),
    FraisAcquisition(),
    VosDroits(),
    Contact(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: FloatingActionButton(
          backgroundColor:   Colors.blue.shade700,
          onPressed: () {},
          tooltip: '',
          child: Icon(
            Icons.bolt_rounded,
            color: Colors.white,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                        color=0;
                      });
                    },
                    child: Container(
                    height: 60,
                      width: 60,
                      child: Column(
                        children: [
                          Icon(
                            Icons.home,
                            color: color==0?Colors.blue.shade700:Colors.blueGrey,
                          ),
                          Text('Accueil',style: TextStyle(fontWeight: FontWeight.bold,color: color==0?Colors.blue.shade700:Colors.blueGrey,),),
                        ],
                      ),
                    )),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                      color=1;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      height: 60,
                      width: 65,
                      child: Column(
                        children: [
                          Icon(
                            Icons.dns,
                            color: color==1?Colors.blue.shade700:Colors.blueGrey,
                          ),
                          Text('Fraisacqui.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12, color:color==1?Colors.blue.shade700:Colors.blueGrey,),)
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;
                        color=2;
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Column(
                        children: [
                          Icon(
                            Icons.mail,
                            color: color==2?Colors.blue.shade700:Colors.blueGrey,
                          ),
                          Text('Droit suc',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12, color:color==2?Colors.blue.shade700:Colors.blueGrey,),)
                        ],
                      ),
                    )),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 3;
                      color=3;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Column(
                      children: [
                        Icon(
                          Icons.record_voice_over,
                          color: color==3?Colors.blue.shade700:Colors.blueGrey,
                        ),
                        Text('Contact',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12, color: color==3?Colors.blue.shade700:Colors.blueGrey,),)
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
*/
class MyApp extends StatefulWidget {
  final SharedPreferences prefs;

  MyApp({required this.prefs});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  final FirebaseStorage firebaseStorage = FirebaseStorage.instance;

  int _selectedIndex = 0;

  int color=0;

  final _bottomNavigationBarColor = Colors.white;

  // late PageController _pageController;
  List<Widget> _widgetOptions = <Widget>[
    HomePage2(),
    FraisAcquisition(),
    VosDroits(),
    Contact(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (_) => AuthProvider(
            firebaseAuth: FirebaseAuth.instance,
            googleSignIn: GoogleSignIn(),
            prefs: this.widget.prefs,
            firebaseFirestore: this.firebaseFirestore,
          ),
        ),
        Provider<SettingProvider>(
          create: (_) => SettingProvider(
            prefs: this.widget.prefs,
            firebaseFirestore: this.firebaseFirestore,
            firebaseStorage: this.firebaseStorage,
          ),
        ),
        Provider<HomeProvider>(
          create: (_) => HomeProvider(
            firebaseFirestore: this.firebaseFirestore,
          ),
        ),
        Provider<ChatProvider>(
          create: (_) => ChatProvider(
            prefs: this.widget.prefs,
            firebaseFirestore: this.firebaseFirestore,
            firebaseStorage: this.firebaseStorage,
          ),
        ),

      ],
      child: MaterialApp(
        title: AppConstants.appTitle,
        theme: ThemeData(
          primaryColor: ColorConstants.themeColor,
        ),
        home: Scaffold(
            body:  _widgetOptions.elementAt(_selectedIndex),floatingActionButton: FloatingActionButton(
            backgroundColor:   Colors.blue.shade700,
            onPressed: () {},
            tooltip: '',
            child: Icon(
              Icons.bolt_rounded,
              color: Colors.white,
            )),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 0;
                            color=0;
                          });
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          child: Column(
                            children: [
                              Icon(
                                Icons.home,
                                color: color==0?Colors.blue.shade700:Colors.blueGrey,
                              ),
                              Text('Accueil',style: TextStyle(fontWeight: FontWeight.bold,color: color==0?Colors.blue.shade700:Colors.blueGrey,),),
                            ],
                          ),
                        )),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 1;
                          color=1;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          height: 60,
                          width: 65,
                          child: Column(
                            children: [
                              Icon(
                                Icons.dns,
                                color: color==1?Colors.blue.shade700:Colors.blueGrey,
                              ),
                              Text('Fraisacqui.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12, color:color==1?Colors.blue.shade700:Colors.blueGrey,),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 2;
                            color=2;
                          });
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          child: Column(
                            children: [
                              Icon(
                                Icons.mail,
                                color: color==2?Colors.blue.shade700:Colors.blueGrey,
                              ),
                              Text('Droit suc',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12, color:color==2?Colors.blue.shade700:Colors.blueGrey,),)
                            ],
                          ),
                        )),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 3;
                          color=3;
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Column(
                          children: [
                            Icon(
                              Icons.record_voice_over,
                              color: color==3?Colors.blue.shade700:Colors.blueGrey,
                            ),
                            Text('Contact',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12, color: color==3?Colors.blue.shade700:Colors.blueGrey,),)
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
