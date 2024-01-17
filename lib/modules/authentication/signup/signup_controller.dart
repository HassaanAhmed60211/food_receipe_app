import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signupProvider =
    ChangeNotifierProvider<SignupController>((ref) => SignupController());

class SignupController extends ChangeNotifier {
  bool? isCheckBox = false;

  void checkBoxUpdate(bool val) {
    isCheckBox = val;
    notifyListeners();
  }
}
