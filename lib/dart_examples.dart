// 如果需要将restful传回的js数组convert为dart对象，可参考：
// https://github.com/dart-lang/json_serializable/issues/135
// var myThing = (JSON.decode(stuff) as List).map((e) => new MyClass.fromJson(e)).toList();
// ----
// 一个自动生成匿名用户的api，https://randomuser.me/documentation#howto

import 'dart:convert';
import 'package:http/http.dart' as http;

// 一个免费的新闻restful api
var url =
    'https://newsapi.org/v1/articles?apikey=3e22f2fcc1344975ae2b2e69379e2a6e&sortBy=latest&source=techcrunch';    

Future<Result> get() async {
  var res = await http.get(url);
  return Result.fromJson(json.decode(res.body));
}

class Result {
  final String message;

  Result({this.message});

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(message: json['message']);
  }
}

var githubUrl='https://api.github.com/users?per_page=5';

Future<List<User>>getUsers() async {
  var res=await http.get(githubUrl);
  var users=(json.decode(res.body) as List).map((e)=>new User.fromJson(e)).toList();
  return users;
}

class User{
  final String userName;

  User({this.userName});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(userName: json['login']);
  }
}
