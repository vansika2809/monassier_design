 import 'package:get/get.dart';

class GetXHelper extends GetxController{
  int which=0;
  void checttext(String text){
    if(text.isNum){
      print("${text} is a number");
      which=1;
    }
    else if (text.isAlphabetOnly){
      print("${text} is a username");
      which=2;
    }
    else if(text.isEmail){
      print("${text} is a email");
      which=3;
    }
    else if(text.isEmpty){
      which=0;
    }
    update();
  }
  void login(){
    if(which==1){
      print("run method from mobile number signIn");
    }
    else if(which==1){
      print("run method from User name signIn");
    }
   else if(which==1){
      print("run method from email Id signIn");
    }
   else{
     print("Show message to user if textfield is empty");
    }
  }
}