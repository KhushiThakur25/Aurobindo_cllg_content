Object b = 23.5;

void main() {
  var n = 23;
  var m = 23.2;
  var name = "Khushi";
  var li = [1, 23, 46, 233, 1];
  var map = {
    "name": "kush",
    "sub": ["maths", "english", "hindi"]
  };
  print(n);
  print(m);
  print("Sum of $n and $m is: ${n + m}");
  print(name);
  print(li);
  print(map["sub"]);
  var subjects = map["sub"] as List;
  print(subjects[1]);

  Object a = 4;

  Object dept = "Hr";
  Object lis = [1, 23, 56, 2];
  Object app = {
    "name": "kush",
    "sub": ["maths", "english", "hindi"],
    "num": [23, 45, 56, 78]
  };
  print(a);
  print(b);
  print(dept);
  print(lis);
  print(app.runtimeType);
  var apps = app as Map<String, dynamic>;
  print(apps["num"][0]);

  String? nan;
//nan = "hello";
  print(nan);
  late Object dis = display(n);
  print(dis);

// dynamic way
  dynamic d;
  d = 100;
  d = "om";
  d = 90.2;
  print(d.runtimeType);
  var g = 12;
  late String description;
  description = "hlo btao";
  print(description + " $g");
}

Object display(int n) {
  print("Hello");
  print(b);
  return b;
}
