basicDataTypes() {
  String name = "user";
  bool alive = true;
  int age = 25;
  double pie = 3.14;

  num number =
      12; //숫자 관련 int 와 double 타입 이 들어갈 수 있으며, Integer 와 double 의 부모 클래스 이다.
  number = 1.2;
}

lists() {
  var giveMeFive = true;
  // List<int> numbers = [1,2,3,4,5];
  var numbers = [
    // var numbers 로 선언 가능.
    1,
    2,
    3,
    4,
    if (giveMeFive) 5 //collection if
  ];
  numbers.add(23);
  List<String> strList = ["a", "b", "c"];
  return numbers;
}

stringInterpolation() {
  var name = 'user';
  var age = 25;
  var greeting =
      'Hello ereyone, my name is $name, nice to meet you'; // $표기 뒤에 변수명 선언 하면 String 으로 표현 가능.
  var greetingOther =
      "Hello everyone, my name is $name, and I'm${age + 2}"; // 중간에 ' 가 들어 갈 경우 "" 로 감싸도 되며 \'로 표기 해서 ''으로 감싸도된다.
  return greeting;
}

collectionFor() {
  var oldFriends = ["user", "user2"];
  var newFriends = [
    "user3",
    "user4",
    for(var friend in oldFriends) "😀$friend" //아래의 for 문을 해당 줄과 같이 Collection for 로 처리 할 수 있다.
  ];
  // for(var friend in oldFriends){
  //   newFriends.add("😀$friend");
  // }
  return newFriends;
}

maps(){
  var player = {
    'name' : 'user',
    'xp' : 3.14,
    'power' : false,
  };
  return player;
}

sets(){ //중복된 값은추가되지 않느다.
  var numbers = {1,2,3,4,5};
  // Set<int> numbers2 = {1,2,3,4};
  numbers.add(5);
  numbers.add(5);
  numbers.add(5);
  numbers.add(6);
  return numbers;
}
