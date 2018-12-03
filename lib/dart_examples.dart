import 'dart:async';

/**
 * use single subscription stream controller demo
 */
class SingleDemo {
  StreamController<String> _controller = new StreamController();

  void listen(callback) {
    _controller.stream.listen(callback);
  }

  void sendMessage(message) {
    _controller.add(message);
  }

  void close() {
    _controller.close();
  }
}

/**
 * use broadcast stream controller demo
 */
class BroadcastDemo {
  StreamController<String> _controller = new StreamController.broadcast();

  void listen(callback) {
    _controller.stream.listen(callback);
  }

  void sendMessage(message) {
    _controller.add(message);
  }

  void close() {
    _controller.close();
  }
}
