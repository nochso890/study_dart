import 'package:study_dart/AbstractStudy.dart';
import 'package:study_dart/Inheritance.dart';
import 'package:study_dart/Mixins.dart';
import 'package:study_dart/Player.dart';
import 'package:study_dart/ServerEnums.dart';
import 'package:study_dart/study_dart.dart' as study_dart;
import 'package:study_dart/Variables.dart' as var_keyword;
import 'package:study_dart/DataTypes.dart' as basic_type;
import 'package:study_dart/Functions.dart' as function;

void main(List<String> arguments) {
  print('Hello world: ${study_dart.calculate()}!');
  
  print('VarKeyWord_getName : ${var_keyword.getName()}');
  print('VarKeyWord_getName : ${var_keyword.getDynamicType()}');
  
  print('Basic_Type : ${basic_type.lists()}');
  print('collection for : ${basic_type.collectionFor()}');
  print('Maps : ${basic_type.maps()}');
  print('Sets : ${basic_type.sets()}');
  
  print('SayHello : ${function.definingFunction('testUser')}');
  print('fatArrowSyntax : ${function.fatArrowSyntax('NewUser')}');
  print('calculation : ${function.plus(3, 5)}');
  print('profile : ${function.userProfile('TestUser', 25, "Korea")}'); //해당 방법은 요소 순서를 잃어버릴수 있기 때문에 좋은 방법이 아니다.
  print('namedArgument : ${function.namedArgumentUserProfile(age: 25, name: 'TestUser', country: 'Korea')}');

  //Country Parameter 의 경우 Optional로 설정되어 있어 해당 Parameter 가 없을 경우 DefaultValue 로 값이 나온다.(기본값 미설정시 null)
  print('OptionalParameters : ${function.optionalParameter('testUser', 12,'KOREA')}');
  print('OptionalParameters : ${function.optionalParameter('testUser', 12)}');

  print('QQ_Operator : ${function.qqOperator('testUser')}');
  print('QQ_Operator : ${function.qqOperator(null)}');

  print('QQ_Operator_Equals : ${function.qqOperatorEquals('KRW')}');
  print('QQ_Operator_Equals : ${function.qqOperatorEquals(null)}');
  
  print('typedefList : ${function.reverseListOfNumbers([1,2,3])}');
  print('typedefMap : ${function.mapsTypedef({'name':'TestUser'})}');
  print('typedefMap : ${function.mapsTypedef({'asndjansdjad':'TestUser'})}'); //해당타입도 Map<String, String> 이기 때문에 호출은 가능하다.(값은 null)

  //Classes 관련 과제로 주석은 이전 순서 코드로 주석을 Player Class 와 맞춰 풀면서 실행 해보기.
  // Player player = Player();
  // player.sayHello();

  // Player player = Player("testUser",20000,90);
  // player.sayHello();
  // Player player2 = Player("bruce", 900000, 99);
  // player2.sayHello();

  // Player player = Player(name: "testUser", xp: 20000, level: 90);
  // player.sayHello();
  // player.myLevel();

  // Player newPlayer = Player.newUser(name: "newUser", server: "test");
  // newPlayer.getUserInformation();
  // print('');
  // Player savePlayer = Player.saveUser(name: "saveUser", server: "mega");
  // savePlayer.getUserInformation();

  // var testUser = Player(name: "bruce", server: "mega", level: 99, xp: 93829103);
  // testUser.level = 55;
  // testUser.server = 'test';

  var testUser = Player(name: "bruce", server: Server.mega, level: 99, xp: 93829103)
    ..level = 1
    ..server = Server.test
    ..xp = 0
    ..getUserInformation();

  var character = Character();
  print('');
  character.walk();
  character.attack();

  var gameUser = GameUser(level: 999, server: Server.mega, name: 'brcue');
  print('Inheritance Study');
  gameUser.sayHello();

  var playUser = PlayUser(level: 899, server: Server.test);
  print('');
  playUser.run();
  print(playUser.hitDamage);
}
