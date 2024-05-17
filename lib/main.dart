import 'package:flutter/material.dart';
import 'package:ptc_test/src/app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(microseconds: 500));
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}
