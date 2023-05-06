import 'dart:html';
import 'dart:js_util';
import 'package:js/js.dart';

@JS('runIt')
external void runIt(api);

@JSExport()
class Api {
  void callback() {
    print('@api.callback()');
  }
}

void main() {
  querySelector('#output')?.text = 'Your Dart app is running.';

  var api = Api();
  runIt(api);
}
