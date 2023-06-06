import 'dart:io';
import 'userdata.dart';

class Register{
  register() {
    print('register first');
    stdout.write("Enter new name: ");
    var a = stdin.readLineSync()!;
    username.add(a);
    stdout.write("Enter password: ");
    var b = stdin.readLineSync()!;
    password.add(b);
    print("Registration success");
  }
}