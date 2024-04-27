String definingFunction(String name){
  // print("Hello $name nice to meet you");
  // call api
  // perform calculation
  return "Hello $name nice to meet you!";
}

String fatArrowSyntax(String name) => "Hello $name nice to meet you!"; //코드가 한줄 일경우 FatArrowSyntax 를 사용하여 return 을 생략할 수 있다.
num plus(num a, num b) => a+b;

String userProfile(String name, int age, String country){
  return "Hello $name you are $age, and you come form $country";
}

String namedArgumentUserProfile({required String name,required int age,required String country}){ //null 로 인한 에러 발생하는데 해당 문제의 경우 defaultValue 설정(ex.name = 'something') 또는 required 설정이 필요하다.
  return "Hello $name you are $age, and you come form $country";
}

// 대괄호 syntax 사용으로 해당 parameter 는 null 을 허용 하게끔 만들수 있다.
optionalParameter(String name, int age, [String? country = 'USA']) => 'Hello $name, you are $age years old from $country';

// qqOperator(String? name){ //name 이 null 값일 경우에대한 기본적인 if 조건문사용으로 return 값 반환.
//   if(name != null){
//     return name.toUpperCase();
//   }
//   return 'Unknown User';
// }

// qqOperator(String? name) => name != null ? name.toUpperCase() : 'Unknown User'; // name 이 null 값일 경우에 대한 삼항 연산자 로 값 반환.

qqOperator(String? name) => name?.toUpperCase() ?? 'Unknown User'; // ??문 사용 ?? 기준 왼쪽 값이 있으면 해당 값 반환 null 이면 오른쪽 의 Unknown User 값 반환한다.

qqOperatorEquals(String? name){
  return name ??= 'USD'; //name 이 null 과 같으면 오른쪽 값을 대입하여 반환한다.
}

typedef ListOfInts = List<int>; // Type의 명칭을 변경해 사용할 수 있게 한다. List<int> => ListOfInts
ListOfInts reverseListOfNumbers(ListOfInts list){
  var revered = list.reversed;
  return revered.toList();
}

typedef UserInfo = Map<String, String>; // Type의 명칭을 변경해 사용할 수 있게 한다. Map<String, String> => UserInfo
String mapsTypedef(UserInfo userInfo){
  return "Hi ${userInfo['name']}";
}
