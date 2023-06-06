import 'dart:io';

var un=["u1","u2"];
var ud={};
login(){
  print("name");
  String name=stdin.readLineSync()!;
  for(var i in ud.keys){
    if("user"==i){
      for(var j in ud[i]){
        if(name==i){
          print("login");
        }
      }
    }
  }
}

void register(){
  print("enter name");
  String name=stdin.readLineSync()!;
  un.add(name);
  print("enter id/keys");
  String key=stdin.readLineSync()!;
  ud[key]=un;
  login();
}

main(){
  /*var data=[3,24,5,6];
  var d1=<int>{4,3,5,7};
  print(data);
  print(d1);
  for(int i=0;i<data.length;i++){
    print(data[i]);
  }
  for (int i in d1) {
    print(i);
  }
  d1.forEach((element) {print(element);});
  //d1.forEach((element,index) {print(index);});
  d1.add(43);
  d1.add(435);
  print(d1);
  data.add(6);
  print(data);
  var data3=data.map((e) => e*2);
  print(data3);
  var dd={"id":100,"name":"user","age":40};
  print(dd);
  print(dd.keys);
  print(dd.values);
  print(dd['id']);
  dd["dep"]="cs";
  dd["sal"]=34345;
  print(dd);
  dd["atr"]=["23",34,"sdf"];
  print(dd);
  dd["info"]={"i1":12,"i2":"fd"};
  print(dd);
  var user={"user":"u1"};
  print("enter name");
  var name=stdin.readLineSync();
  if(name==user['user']){
    print("li");
  }
  //var u={"u1":"u1","u2":"u2"};
   var u={"u1","u2"};
  var ud={};
  ud["user"]=u;
  for(var i in ud.keys){
    print(i);
    if(i=="user"){
      for(var j in ud[i]){
        if(name==j){
          print("lg");
          break;}
      }
    }
  }*/
  var a=[1,2,3,4];
  var b=[11,12,13,14];
  if(a.contains(1)){
    print(a.indexOf(1));
  }
}