import 'ServerEnums.dart';

//Class 관련 과제로 주석은 이전 순서 코드로 주석을 main Class 의 Classes 와 맞춰 풀면서 실행 해보기.
// class Player{
//   String name = "testUser";
//   int xp = 20000;
//
//   void sayHello(){
//     print('Hello my name is $name');
//   }
//
// }

// class Player{
//   //late 사용으로 나중에 생성자를 통해 값을 주입받을수 있다. (해당 주석과 같이 잘 사용되지 않음)
//   // late String name;
//   // late int xp;
//   // late int level;
//   // Player(String name, int xp, int level){
//   //   this.name = name;
//   //   this.xp = xp;
//   //   this.level = level;
//   // }
//
//   String name;
//   int xp;
//   int level;
//
//   Player(this.name,this.xp,this.level); //위 Player 생성자 방식 보다 해당 방식을 사용함.(생성시 주입해야하는 값들이 많으면 순서를 기역해야되는 단점.)
//
//   void sayHello(){
//     print('Hello my name is $name');
//   }
//
// }

// class Player{
//   String name;
//   int xp;
//   int level;
//
//   Player({required this.name,required this.xp,required this.level}); //중괄호({}) 를 이용해 key:value 로 주입값을 표기 할 수 있으며, null 방지를 위해 required 를 선언.
//
//   void sayHello(){
//     print('Hello my name is $name');
//   }
//   void myLevel(){
//     print('My level is $level');
//   }
// }

// class Player{
//   String name,server; //같은 변수타입의 경우 한줄로 사용할 수 있다.
//   int level,xp;
//
//   Player({required this.name,required this.server,required this.level,required this.xp});
//
//   Player.newUser({required this.name,required this.server}) : // 생성자에 별도의 이름을 지정하여 상황에 따라 초기화방법을 선택할 수 있다.
//       level = 0,
//       xp = 0;
//
//   Player.saveUser({required this.name,required this.server}) :
//       level = 99,
//       xp = 90000;
//
//   void getUserInformation(){
//     print('Hello new User! you are information is');
//     print('You are name is $name');
//     print('Connection server name is $server');
//     print('Level : $level');
//     print('Xp : $xp');
//   }
// }

// class Player{
//   String name,server;
//   int level, xp;
//
//   Player({required this.name, required this.server, required this.level, required this.xp});
//
//   void getUserInformation() {
//     print('Hello new User! you are information is');
//     print('You are name is $name');
//     print('Connection server name is $server');
//     print('Level : $level');
//     print('Xp : $xp');
//   }
// }

class Player{
  String name;
  int level, xp;
  Server server;

  Player({required this.name, required this.server, required this.level, required this.xp});

  void getUserInformation() {
    print('Hello new User! you are information is');
    print('You are name is $name');
    print('Connection server name is $server');
    print('Level : $level');
    print('Xp : $xp');
  }
}
