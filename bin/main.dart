// https://www.dartlang.org/guides/language/language-tour#constructors
// 运用factory constructor，实现singleton pattern
import 'package:dart_examples/dart_examples.dart';

main(List<String> arguments) {
  Product p = Product();
  print('$p');
  p.update(name: 'Joe');
  print('$p');
}
