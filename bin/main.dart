import 'package:dart_examples/dart_examples.dart' as dart_examples;

main(List<String> arguments) {
  testSingleDemo();
  testBroadcastDemo();
}

/**
 * test single subscription stream
 */
void testSingleDemo() {
  var demo = dart_examples.SingleDemo();
  demo.listen((message) {
    print('single subscription receive message: $message');
  });

  // 下面语句将报异常：Bad state: Stream has already been listened to.
  // demo.listen((message){
  //   print('test another customer: $message');
  // });

  demo.sendMessage('hello world.');
  demo.sendMessage('good job!');
  demo.close();

  // 下面语句将报异常：Bad state: Cannot add event after closing
  // demo.sendMessage('another message');
}

/**
 * test broadcast stream
 */
void testBroadcastDemo() {
  var demo = dart_examples.BroadcastDemo();
  demo.listen((message) {
    print('broadcast customer A, receive message: $message');
  });
  demo.listen((message) {
    print('broadcast customer B, receive message: $message');
  });

  demo.sendMessage('hello world.');
  demo.sendMessage('good job!');
  demo.close();
}
