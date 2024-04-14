import 'package:study_dart/study_dart.dart' as study_dart;
import 'package:study_dart/VarKeyword.dart' as var_keyword;
import 'package:study_dart/BasicDataTypes.dart' as basic_type;

void main(List<String> arguments) {
  print('Hello world: ${study_dart.calculate()}!');
  print('VarKeyWord_getName : ${var_keyword.getName()}');
  print('VarKeyWord_getName : ${var_keyword.getDynamicType()}');
  print('Basic_Type : ${basic_type.lists()}');
  print('collection for : ${basic_type.collectionFor()}');
  print('Maps : ${basic_type.maps()}');
  print('Sets : ${basic_type.sets()}');
}
