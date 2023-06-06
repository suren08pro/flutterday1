import 'dart:io';
import 'order.dart';
import 'login.dart';
import 'product.dart';

main() {
  User a1 = User();
  a1.register();
  if (a1.login()) {
    Order a3=Order();
    a3.printList(productdata);
    print("");
    a3.cart();
    a3.loop();
    stdout.write("Do you want to print product list again:(1 for Yes or 0 for No)");
    int a=int.parse(stdin.readLineSync()!);
    if(a==1){
      a3.printList(productdata);
    }
    stdout.write("Do you want to make payment(1 for yes or 2 for no):");
    a=int.parse(stdin.readLineSync()!);
    if(a==1){
      a3.order();
    }
    stdout.write("Type 1 if you completed payment:");
    a=int.parse(stdin.readLineSync()!);
    if(a==1){
      a3.paid();
      if(cartdata['Product']==Null){
        a3.printcart();
        print("object");
      }
    }
  }
}