import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:app_tarefas/app/services/app_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AppModule());
}
