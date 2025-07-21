@@ -1,16 +1,16 @@
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async {
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();  }
    return const Placeholder();
  }
}
