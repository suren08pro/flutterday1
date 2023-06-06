import 'dart:io';
import 'package:flutter_application_1/dartpr/dart1/cart.dart';
import 'product.dart';

class Order extends Cart{
  order() {
    for(int i=0;i<cartdata["Product"]!.length;i++){
      for(int j=0;j<productdata["Product"]!.length;j++){
        if(productdata['Product']?[j]==cartdata["Product"]?[i]){
          //cartList['Price']?[i]=(cartList['Price']?[i]+productdata['Price']?[j]*(100-productdata['discount']?[j])/100*(cartList['Quantity']?[i])) as double;
          cartpr = (cartpr +productdata['Price']?[j] *(100 - productdata['discount']?[j]) /100 *(cartdata['Quantity']?[i])) as double;
          print("${cartdata['Price']?[i]} ${cartdata['Quantity']?[i]} ${productdata['Price']?[j]} ${productdata['discount']?[j]}");
        }
      }
    }
    print('Order list');
    /*for (var o in cartList.keys) {
      stdout.write(o + "\t");
      stdout.write(cartList[o]?[0]);
      //stdout.write(cartList)
      print("");
    }*/
    for (var pd in cartdata.keys) {
      if(pd=='Product'){
        stdout.write(pd+"\t\t");
        continue;
      }
      stdout.write(pd + "\t");
    }
    print("");
    for (int i = 0; i < cartproduct.length; i++) {
      for (var key in cartdata.keys) {
        stdout.write(cartdata[key]?[i]);
        stdout.write("\t\t");
      }
      print("");
    }
    print(cartpr);
    //print("Cart price ${cartList["productQuantity"]?[0]*}");
  }
  paid(){
    cartproduct = [];
    cartqt = [];
//List<double> cartpr = [0];

    pn = [];
    cartdata = <String, dynamic>{
      "ProductId": pn,
      "Product": cartproduct,
      "Quantity": cartqt,
      //"Price": cartpr
    };

    cartpr = 0;

  }
}
    
    /*for (var a in productdata.values) {
      for (var b in cartList.values) {
        if (productdata[a] == cartList[b]) {
          print("${productdata[a]} is ${a} true${cartList[b]}");
        } else {
          print("${cartList[b]}is ${a} false ${productdata[a]}");
        }
      }
    }
    print("${cartList['cartProduct']?[0]}");
    for(int i=0;i<productdata['productName']!.length;i++) {
      for(int j=0;j<cartList['cartProduct']!.length;j++){
        if({cartList['cartProduct']?[j]}=={productdata['productName']?[i]}){
          //cartList['cartPrice']?[j]=cartList['cartProduct']?[j]+((productdata['productPrice']?[i]));//*2;//(cartList['ProductQuantity']?[i]);
        }
      }
    }*/
    for (int i = 0; i < cartList['carProduct']!.length; i++) {
      cartList['cartPrice']?[i]=cartList['productQuantity']?[i]*productdata['productPrice']?[i];
    }*/