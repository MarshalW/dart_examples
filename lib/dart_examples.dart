class Product with Useage {}

mixin Useage {
  toString() {
    print('from Useage');
    return 'usage';
  }
}
