import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monassier_design/GetXPackage/GetXHelper.dart';
import 'package:monassier_design/OTPcontoller.dart';
List<Map> productDtails = [];
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  final GetXHelper getXHelper = Get.put(GetXHelper());

  /* bool submitValid = false;

  /// Text editing controllers to get the value from text fields
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _otpcontroller = TextEditingController();

  // Declare the object
  late EmailAuth emailAuth;

  @override
  void initState() {
    super.initState();
    // Initialize the package
    emailAuth = new EmailAuth(
      sessionName: "Sample session",
    );


    // emailAuth.config(remoteServerConfiguration);
  }


  void verify() {
    var res=EmailAuth.vail
    // print(emailAuth.validateOtp(
    //     recipientMail: _emailcontroller.value.text,
    //     userOtp: _otpcontroller.value.text));
  }



  void sendOtp() async {
    bool result = await emailAuth.sendOtp(
        recipientMail: _emailcontroller.value.text, otpLength: 5);
    if (result) {
      setState(() {
        submitValid = true;
      });
    }
  }*/
  String dailcode = '+00';


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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login',style: GoogleFonts.kalam(fontSize: 50,fontWeight: FontWeight.bold),),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (text){
getXHelper.checttext(text);
              },
              controller: email,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Email|Mobile number|UserName',
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.black,
                  )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    )
                ),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(10, 20,10,10),

              ),
              cursorColor: Colors.black,style: TextStyle(color: Colors.black),
            ),
          ),
          GetBuilder<GetXHelper>(builder: (_){
            return _.which==1?Container():Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(

                controller: pass,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black,
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      )
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 20,10,10),

                ),
                cursorColor: Colors.black,style: TextStyle(color: Colors.black),
              ),
            );
          }),
          
          /*Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (text) {
                getXHelper.checttext(text);
              },
              controller: email,
              decoration: InputDecoration(
                suffixIcon: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Send OTP',
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                ),
                hintText: 'Email|Mobile number|UserName',
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.purple,
                    )),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 10),
              ),
              cursorColor: Colors.black,
              style: TextStyle(color: Colors.black),
            ),
          ),*/

          MaterialButton(
            color: Colors.blue,
            child: Text('Send OTP'),
            onPressed: () {
              getXHelper.login();
              productDtails.add({
                'number':email.text
              });
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => OTPController(
                  phone:email.text,

                ),));
              });
            },
          ),
          // MaterialButton(
          //   color: Colors.blue,
          //   child: Text('LOGIN'),
          //   onPressed: (){
          //     getXHelper.login();
          //   },
          // ),
        ],
      ),
    );
  }
}
