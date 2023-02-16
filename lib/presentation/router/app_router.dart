import 'package:flutter/material.dart';
import 'package:apiashraftest/presentation/screens/home_screen.dart';
import 'package:apiashraftest/presentation/screens/todo_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/') {
      return MaterialPageRoute(builder: (_) => HomeScreen());
    } else if (settings.name == '/todo-screen') {
      var userID = settings.arguments as String;
      return MaterialPageRoute(builder: (_) => TodoScreen(userID: userID));
    } else {
      return null;
    }
  }
}
