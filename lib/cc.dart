import 'dart:io';

//import 'package:flutter_application_1/Learn.dart';

List<String> pN = ["laptop  ", "keyboard", "mouse   "];
List<int> pI = [1, 2, 3];
List<int> pP = [100000, 1000, 500];
List<int> pQ = [100, 200, 300];
var productdata = {
  "productId    ": pI,
  "productName  ": pN,
  "productPrice ": pP,
  "productQntity": pQ,
  "discount": [1, 2, 3] 
  };
var cartproduct=[];
var cartqt=[];
var cartpr=[0];
var pn=[1];
var cartList={"ProductId":pn,"cartProduct":cartproduct,
  "productQuantity":cartqt,
  "cartPrice":cartpr
  };
//
class B {
  
  bool  login(var username,var password,var userdata) {
    print('login info');
    stdout.write("Enter username: ");
    var a=stdin.readLineSync()!;
    stdout.write("Enter Password: ");
    var b=stdin.readLineSync()!;
    for(int i=0;i<username.length;i++){
      if(username[i]==a){
        if(password[i]==b){
          print("Login success");
          return true;
        }else{
          stdout.write("Something went wrong,if you want to try again, type yes:");
          var c=stdin.readLineSync()!;
          if(c=="YES"||c=="yes"||c=="Yes")
            login(username,password,userdata);
          else
            return false;
        }
      }
      stdout.write("Something went wrong,if you want to try again, type yes:");
      var c = stdin.readLineSync()!;
      if (c == "YES" || c == "yes" || c == "Yes")
        login(username,password,userdata);
      else
        return false;
    }
    return false;
  }
  register(var username,var password,var userdata){
    print('register first');
    stdout.write("Enter new name: ");
    var a=stdin.readLineSync()!;
    username.add(a);
    stdout.write("Enter password: ");
    var b=stdin.readLineSync()!;
    password.add(b);
    print("Registration success");
  }
  product(){
  }
  printList(){
    print('Product list');
    for (var pd in productdata.keys) {
      stdout.write(pd + "\t");
    }
    print("");
    for (int i = 0; i < pI.length; i++) {
      for (var key in productdata.keys) {
        stdout.write(productdata[key]?[i]);
        if (key == "productName  ") {
          stdout.write("\t");
          continue;
        }
        stdout.write("\t\t");
      }
      print("");
    }
  }
  cart(){
    stdout.write('Select product from the list(as productId):');
    int a=int.parse(stdin.readLineSync()!);
    if(a>0&&a<=pI.length){
      stdout.write("Select quantity of product (available is ${pQ[a-1]}):");
      int qt=int.parse(stdin.readLineSync()!);
      if(qt>0&&qt<=pQ[a-1]){
        cartproduct.add(pN[a-1]);
        cartqt.add(qt);
        cartpr[0]=cartpr[0]+qt*pP[a-1];
        //pn[0]=1;
      }else{
        print("Please select right numbers");
      }
      }else
        cart();
  }
  order(){
    print('Order list');
    for (var o in cartList.keys) {
      stdout.write(o + "\t"); 
      stdout.write(cartList[o]?[0] );
      //stdout.write(cartList)
      print("");
    }
    //print("Cart price ${cartList["productQuantity"]?[0]*}");
  }
}

  main(){
    var username = <String>[];
    var password = <String>[];
    var userdata = {"username1": username, "password1": password};
    B a=new B();
    a.register(username,password,userdata);
    if(a.login(username,password,userdata)){
      a.printList();
      print("");
      a.cart();
      a.order();
      //a.printList();
      
    }
  }

