/*main(){
  var a={"a1":1,"a2":2,"a3":3,"a4":4,"a5":5};
  var b={"b1":5,"b2":6,"b3":7,"b4":8};
  //var c=merge(a,b);
  print(a);
  //print(a.keys);
  //print(a.values);
  //print(a.entries);
  //print(a.values.length);
  //print(a.values[0]);
  //print(a.keys.first);
  //print(a.keys.last);
  //print(a.keys.length);
  //print(b.values.first);
  //print(a.values.last);
  //print(a.values.length);
  print(a.values.contains(5));
    if(a.values.contains(b.values.first)){
      print(b.values.map((e) => 1));
      print(a.values.elementAt(2));
      
  }
}*/
class Chair {
  String? name;
  String? color;

// Constructor
  Chair({this.name, this.color});

// Method
  void display() {
    print("Name: ${this.name}");
    print("Color: ${this.color}");
  }
}

void main() {
  Chair chair = Chair(name: "Chair1", color: "Red");
  chair.display();
}
