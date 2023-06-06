import 'dart:io';

import '../dartpr/dart1/product.dart';


var cartproduct = [];
var cartqt = [];
var cartpr = [0];
var pn = [1];
var cartList = {
  "ProductId": pn,
  "cartProduct": cartproduct,
  "productQuantity": cartqt,
  "cartPrice": cartpr
};

class Cart {
  cart() {
    stdout.write('Select product from the list(as productId):');
    int a = int.parse(stdin.readLineSync()!);
    if (a > 0 && a <= pI.length) {
      stdout.write("Select quantity of product (available is ${pQ[a - 1]}):");
      int qt = int.parse(stdin.readLineSync()!);
      if (qt > 0 && qt <= pQ[a - 1]) {
        cartproduct.add(pN[a - 1]);
        cartqt.add(qt);
        cartpr[0] = cartpr[0] + qt * pP[a - 1];
        print(
            "${cartList['productQuantity']?[0]} Selected product ${cartList['cartProduct']?[0]} added in your cart");
        //pn[0]=1;
      } else {
        print("Please select right numbers");
      }
    } else
      cart();
  }
  removecart(){
    print(cartList);
    print("Which product you want to remove (Enter id as 1,2,3)");
    //print(cartList['ProductId']?.length);
    int a=int.parse(stdin.readLineSync()!);
    //if(a>0&&a<cartList['productId']!.length){
    if(a>0&&a<=cartList['ProductId']!.length){
      print("Number of ${cartList['cartProduct']?[0]} is in the cart : ${cartList['productQuantity']?[0]}");
      print("How much ${cartList['cartProduct']?[0]} you want to remove from the cart : ");
      int b=int.parse(stdin.readLineSync()!);
      cartList['productQuantity']?[0] -= b;
      print(cartList['productQuantity']?[0]);
    }else{
      print("object");
    }
  }
}
void main(List<String> args) {
  Cart a=Cart();
  a.cart();
  a.removecart();
}
