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

nullSafety(){
  String? name = 'user'; // ? 가 없으면 name = null 에 에러 발생.
  name = null;
  //name.isNotEmpty; name 이 null 일수도 있기 때문에 에러 발생.
  if(name != null){
    name.isNotEmpty;
  }
}
