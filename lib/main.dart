import 'package:culinar/app/app.dart';

import 'package:culinar/feature/auth/data/repositories/user_firebase_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App(UserFirebaseRepository()));
}
 