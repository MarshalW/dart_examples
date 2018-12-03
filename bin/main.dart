// https://flutter.io/docs/cookbook/networking/fetch-data
// 参见上述链接文档

import 'package:dart_examples/dart_examples.dart' as dart_examples;

main(List<String> arguments) async {
  var result=await dart_examples.get();
  print('result message: ${result.message}');
  print('-----------');
  print('github users:');
  var users=await dart_examples.getUsers();
  users.forEach((e)=>print(e.userName));

}