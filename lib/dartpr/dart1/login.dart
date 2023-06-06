import 'dart:io';
import 'register.dart';
import 'userdata.dart';

class User extends Register{
  retry(){
    stdout.write("Something went wrong,if you want to try again, type yes:");
    var c = stdin.readLineSync()!;
    if (c == "YES" || c == "yes" || c == "Yes")
      login();
    else
      return false;
  }
  bool login() {
    print('login info');
    stdout.write("Enter username: ");
    var a = stdin.readLineSync()!;
    stdout.write("Enter Password: ");
    var b = stdin.readLineSync()!;
    for (int i = 0; i < username.length; i++) {
      if (username[i] == a&& password[i] == b) {
          print("Login success");
          return true;
      }else{
         retry();
      }
    }
    print("object"); 
    return true;
  }
}