import 'ServerEnums.dart';

class Human{
  String name;
  Human(this.name);

  void sayHello(){
    print("Hello my name is $name");
  }

}

class GameUser extends Human{
  int level;
  Server server;

  GameUser({required this.level, required this.server,required String name}) : super(name);

  @override
  void sayHello(){
    super.sayHello();
    print("My level is $level and connected server name is ${server}");
  }
}

