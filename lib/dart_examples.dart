abstract class Consume {
  void buy(num money);
}

class User {
  String _name;

  User(this._name);

  String get name => _name;
}

class Client extends User implements Consume{

  Client(String name) : super(name);

  @override
  void buy(num money) {
    print('user: $name, spend ¥ $money');
  }

}