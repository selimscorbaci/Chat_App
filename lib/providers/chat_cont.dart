import 'package:flutter/material.dart'
    show ChangeNotifier, TextEditingController;

class ChatProvider extends ChangeNotifier {
  TextEditingController? input = TextEditingController();
  bool isSended = false;

  void addInput(String text) {
    input?.text = text;
    notifyListeners();
  }

  void Send() {
    (input?.text != "") ? isSended = true : isSended = false;
    if (isSended) {
      input?.clear();
    }
    notifyListeners();
  }
}
