import 'dart:io';

var product={"laptop":100000,"keyboard":1000,"mouse":500};


main(){
  List pN=["laptop","keyboard","mouse"];
  List pI=[1,2,3];
  List pP=[100000,1000,500];
  List pQ=[100,200,300];
  List v1=[1,2,3],v2=[4,5,6];
 // var product = {"laptop": 100000, "keyboard": 1000, "mouse": 500};
  //print(product.keys.any(() => false));
  var productdata ={
    "productId":pI,
    "productName":pN,
    "productPrice":pP,
    "productQntity":pQ,
    "discount":[1,2,3],
    "cart":[{"var1":v1,"var2":v2}]
  };
  for(var i in productdata.keys){
    if(i=="cart")
      continue;
    stdout.write(i);
    stdout.write("\t");
  }
  //productdata.values.forEach(print);
  print("\t");
  /*for(var i=0;i<productdata.length;i++){

    for(var j=0;j<productdata.values.length;j++){
      //print(productdata.values.length);
      print(productdata.keys);
    }
    
    stdout.write("\t");
    print("\t");
  }*/
  for(var j =0;j<pI.length;j++){
  for(var i in productdata.keys){
    if(i!="cart"){
   stdout.write(productdata[i]?[j]);
      stdout.write("\t\t");
    }
    }
    print("");
  }
    
  /*for(var i in productdata.values){
    stdout.write(i);
  }
  print(pI);
  print(productdata.values);*/
}