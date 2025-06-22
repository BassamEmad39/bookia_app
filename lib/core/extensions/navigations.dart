import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension NavigationExtension on BuildContext {
  void navigateTo(String routeName) {
    push(routeName);
  }

  void pushWithReplacement(String routeName) {
    pushReplacement(routeName);
  }

  void pushToBase(String routeName) {
    go(routeName);
  }
}
