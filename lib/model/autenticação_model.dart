import 'package:flutter/material.dart';

class EstatdoAutenticacao extends ChangeNotifier {
  bool _queroEntrar = true;

  bool get queroEntrar => _queroEntrar;

  void toggleAuthMode() {
    _queroEntrar = !_queroEntrar;
    notifyListeners();
  }
}