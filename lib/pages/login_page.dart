import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nostrin/components/my_button.dart';
import 'package:nostrin/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final publicKeyController = TextEditingController();
  final privateKeyController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SvgPicture.asset('lib/images/nostrin.svg',
                color: const Color(0xFF5a3c90), height: 125),

            const SizedBox(height: 40),

            // sign in to continue
            const Text(
              'Sign In to continue',
              style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            // public key textfield
            MyTextField(
              controller: publicKeyController,
              hintText: 'Public Key',
              obscureText: false,
            ),

            const SizedBox(height: 20),

            // private key textfield
            MyTextField(
              controller: privateKeyController,
              hintText: 'Private Key',
              obscureText: true,
            ),

            const SizedBox(height: 20),

            // sign in button
            MyButton(
              onTap: signUserIn,
            ),
            const SizedBox(height: 50),

            // don't have an account? generate a key
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account? ',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(width: 4),
                const Text(
                  'Generate a key',
                  style: TextStyle(
                      color: Color(0xFF5a3c90), fontWeight: FontWeight.bold),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
