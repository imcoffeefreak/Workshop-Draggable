mixin Property {
  String get name;
  int get age;
}

class HumanProperties with Property{
  @override
  int get age => 10;

  @override
  String get name => "Hello world";

}
