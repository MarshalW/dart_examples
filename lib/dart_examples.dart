import 'dart:convert';
import 'package:http/http.dart' as http;

// 一个免费的新闻restful api
var url =
    'https://newsapi.org/v1/articles?apikey=3e22f2fcc1344975ae2b2e69379e2a6e&sortBy=latest&source=techcrunch';

Future<Result> get() async {
  var res = await http.get(url);
  return Result.fromJson(json.decode(res.body));
}

int calculate() {
  return 6 * 7;
}

class Result {
  final String message;

  Result({this.message});

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(message: json['message']);
  }
}
