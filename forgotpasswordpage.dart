@@ -1,28 +1,28 @@
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class ForgotPasswordPage extends StatelessWidget {
  final emailController = TextEditingController();
// class ForgotPasswordPage extends StatelessWidget {
//   final emailController = TextEditingController();

  void resetPassword(BuildContext context) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailController.text);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Password reset email sent')));
    } catch (e) {
      print(e);
    }
  }
//   void resetPassword(BuildContext context) async {
//     try {
//       await FirebaseAuth.instance.sendPasswordResetEmail(email: emailController.text);
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Password reset email sent')));
//     } catch (e) {
//       print(e);
//     }
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forgot Password")),
      body: Column(
        children: [
          TextField(controller: emailController, decoration: InputDecoration(labelText: "Email")),
          ElevatedButton(onPressed: () => resetPassword(context), child: Text("Reset Password")),
        ],
      ),
    );
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Forgot Password")),
//       body: Column(
//         children: [
//           TextField(controller: emailController, decoration: InputDecoration(labelText: "Email")),
//           ElevatedButton(onPressed: () => resetPassword(context), child: Text("Reset Password")),
//         ],
//       ),
//     );
//   }
// }
