abstract class Product {
  static Product _singleton = _Product('--');

  factory Product() {
    return _singleton;
  }

  void update({name});
}

class _Product implements Product {
  String _name;

  String get name => _name;

  void update({name}) {
    _name = name;
  }

  toString()=>'Product, name: $_name';

  _Product(this._name);
}
