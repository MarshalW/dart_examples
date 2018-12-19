library my_lib;

import 'desc.dart' show desc;
import 'desc.dart' show intro;
// import 'desc.dart' hide intro;
part 'product.dart';

class Product {
  @override
  String toString() {
    desc();
    intro(); // 如果import没有show，就不能用
    return 'Product';
  }
}

class _Management {
  @override
  String toString() {
    return '_Manager';
  }
}
