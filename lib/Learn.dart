import 'dart:io';
var pname = ["xxx", "yyy", "zzz"];
var price = [100, 200, 300];
var qty = [10, 20, 30];
var cartpd=[];
var cartqt=[];

product() {
  print("s no\t\t Product \t\t Price \t\t Qntity");
  for (int i = 0; i < pname.length; i++) {
    print("${i + 1} \t\t ${pname[i]} \t\t\t ${price[i]} \t\t ${qty[i]}");
  }
}

bool addcart(var p, var q) {
  if (p < 1 || p > pname.length) {
    print("Please, enter valid product id");
    return false;
  }
  if (q > 0 && q <= qty[p - 1]) {
    print("Your order ${pname[p - 1]} added in cart");
    //print("Please pay ${q * price[p - 1]}");
    cartpd.add(pname[p-1]);
    cartqt.add(q);
    return true;
  } else {
    print("Invalid quantity");
  }
  return false;
}

bool data(var u, var p) {
  var un = ["aaa", "bbb", "ccc"];
  var pw = ["111", "222", "333"];
  for (int i = 0; i < un.length; i++) {
    if (un[i] == u && pw[i] == p) {
      return true;
    }
  }
  return false;
}

login() {
  print("Enter Username");
  var un = stdin.readLineSync();
  print("Password");
  var pw = stdin.readLineSync();
  if (data(un, pw)) {
    print("Login Successful");
    return true;
  } else
    print("Something went wrong");
  return false;
}


payment(){
  num pay=0;
  for(int i=0;i<pname.length;i++){
    if(cartpd.contains(pname[i])){
      pay=pay+price[i]*cartqt[cartpd.indexOf(pname[i])];
    }
  }
  print("make payment for ${cartpd} is ${pay}");
}

bool removec(){
  print("Enter product name");
  var pc = stdin.readLineSync();
  if(cartpd.contains(pc)){
    cartpd.remove(pc);
    cartqt.remove(cartpd.indexOf(pc));
    return true;
  }
  return false;
}

main() {
  while (true) {
    print("1 log in 2 log out");
    var ch = stdin.readLineSync();
    var c = int.parse(ch!);
    switch (c) {
      case 1:
        if (login()) {
          product();
          print("Select product to purchage from upper list (as s no = 1,2,3)");
          var p = int.parse(stdin.readLineSync()!);
           print("Enter quantity");
          var q = int.parse(stdin.readLineSync()!);
          if(addcart(p, q)){
            print(cartpd);
            print("Do you wnat to remove any product from cart(Yes)");
            var r = stdin.readLineSync();
            if(r=="Yes"||r=="yes"||r=="YES"){
              if(removec()){
                print(cartpd);
              }
            }
            print("Type 'PAY' to make payment");
            var p = stdin.readLineSync();
            if(p=="PAY"||p=="Pay"||p=="pay")
              payment();

          }
        }
        break;
      case 2:
        return;
      default:
        print("Wrong Entry, retry");
        break;
    }
  }
}
