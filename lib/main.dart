import 'package:flutter/material.dart';
import 'package:new_experinse/app/my_app.dart';
import '/injection/injection_container.dart' as di;

void main() async {
  await di.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
