import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat11/components/register_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  'Flash Chat',
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              isRepeatingAnimation: false,
            ),
            SizedBox(height: 40),
            RegisterWidget(
              title: "Sign In",
              onTap: () {
                context.go('/sign_in_page');
              },
            ),
            SizedBox(height: 20),
            RegisterWidget(
                title: "Sign Up",
                onTap: () {
                  context.go('/sign_up_page');
                },
                containerColor: Color(0xff2571B6)),
          ],
        ),
      ),
    );
  }
}
