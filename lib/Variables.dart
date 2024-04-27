String getName(){
    var name = 'Only String'; //String 으로 직접 선어해줘도 된다.
  // name = 1; 위에 선언타입과 다른 타입을 넣으려 하면 에러발생한다.(int,boolean,...)
    name = 'TestUser';
  return name;
}

getDynamicType(){
  var name; //변수선언시 초기화하지 않으면 dynamic type 이 된다.
  name = '';
  name =12;
  name = true;

  dynamic something;
  if(something is String){ //원하는 타입인지 if 문을 이용하여 확인 가능.
    something.toString(); //해당 타입일 경우 사용 할 수 있는 함수 제공.
  }

  something = 12;
  something = '';
  something = true;
  return something;
}

bool nullSafety(){
  String? name = 'user'; // ? 가 없으면 name = null 에 에러 발생.
  name = null;
  //name.isNotEmpty; name 이 null 일수도 있기 때문에 에러 발생.
  if(name != null){
    name.isNotEmpty;
    return true;
  }
  return false;
}

finalVariables(){
  final String name = 'user'; //final 을 선언이 후 에는 변수를 수정 할 수 없다.
  final age = 12; //final 뒤에 타입은 Dart 에서 변수값에 맞게 타입이 지정되기 때문에 생략 할 수 있다.
  // name = 'change';
}

lateVariables(){
  late final String name; //초기 데이터 없이 선언 할 수 있게 해준다. (데이터를 API 요청 후 나중에 넣어야 할 경우 사용)
  // print(name); 데이터 초기값 입력전에 출력 요청을 작성하면 에러 발생.
  //do something, go to api
  name = 'user'; //1회 한해서 초기 데이터를 입력 할 수 있다.
}

constVariables(){
  const name = 'user'; // 컴파일시에 하드코드 되어 값이 변하지 않는다.
  //name = '12'; final 과 같이 선언 이후에는 수정되지 않는다.
}
