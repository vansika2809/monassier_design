import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monassier_design/screens/home_page.dart';
import 'package:pinput/pin_put/pin_put.dart';


import 'login_page.dart';
import 'main.dart';

class OTPController extends StatefulWidget {
  final String phone;


  OTPController({required this.phone,});

  @override
  _OTPControllerState createState() => _OTPControllerState();
}

class _OTPControllerState extends State<OTPController> {
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  final TextEditingController pinOTPController = TextEditingController();
  final FocusNode pinOTPNode = FocusNode();
  String? varification;

  final BoxDecoration pinOTP = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey,
      border: Border.all(color: Colors.black)
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    varifyPhoneNumber();
  }

  varifyPhoneNumber() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '${widget.phone}',
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance.signInWithCredential(credential).then((
            value) {
          if (value.user != null) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomePage2(),
            ));
          };

        });
      },
      verificationFailed: (FirebaseAuthException e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.message.toString()),
            duration: Duration(seconds: 3),),
        );
      },
      codeSent: (String vID, int? resenttocken) {
        setState(() {
          varification = vID;
        });
      },
      codeAutoRetrievalTimeout: (String vID) {
        setState(() {
          varification = vID;
        });
      },
      timeout: Duration(seconds: 60),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    varifyPhoneNumber();
                  },
                  child: Text('verifying : ${widget.phone}'),
                ),
              ),
            ),
          ),
          PinPut(
            fieldsCount: 6,
            eachFieldHeight: 55.0,
            eachFieldWidth: 40,
            focusNode: pinOTPNode,
            controller: pinOTPController,
            submittedFieldDecoration: pinOTP,
            selectedFieldDecoration: pinOTP,
            followingFieldDecoration: pinOTP,
            pinAnimationType: PinAnimationType.rotation,
            keyboardType: TextInputType.number,
            textStyle: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            onSubmit: (pin) async {
              try {
                await FirebaseAuth.instance
                    .signInWithCredential(PhoneAuthProvider.credential(
                    verificationId: varification!, smsCode: pin))
                    .then((value) {
                  if (value.user != null) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomePage2(),
                    ));
                  }
                });
              } catch (e) {
                FocusScope.of(context).unfocus();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Invaild OTP'),
                    duration: Duration(seconds: 3),),
                );
              }
            },
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: productDtails.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage2(),
                              ));
                        });
                      },
                      // leading: QrImage(
                      //   // data: "1234567890",
                      //   data: widget.productName,
                      //   version: QrVersions.auto,
                      //   size: 100.0,
                      // ),

                      title: Text(productDtails[index]['number']),

                    );
                  })),
        ],
      ),
    );
  }
}


