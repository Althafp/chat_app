

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:last/firebase_options.dart';
import 'package:last/services/auth/auth_gate.dart';
import 'package:last/services/auth/auth_service.dart';
import 'package:provider/provider.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
      ChangeNotifierProvider(create: (context)=>AuthService(),
        child: const MyApp(),
      ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:
      false,
      home: AuthGate(),
    );
  }
}
