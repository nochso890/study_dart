abstract class Human{
  void walk();
  void attack();
}

class Character extends Human{
  @override
  void attack() {
    print("ATTACK!!! DAMAGE 1000");
  }

  @override
  void walk() {
    print("the character walking");
  }

}

class User extends Action {
  final String name;
  User(this.name);

}

class Action {
  void sayHello(String name){
    print('Hello my name is $name');
  }

  void attack(){
    print("ATTACK!! ");
  }
}
