import 'package:app1/components/primary_button.dart';
import 'package:app1/constants.dart';
import 'package:app1/screens/chats/chats_screen.dart';
import 'package:flutter/material.dart';

class SigninOrSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(flex: 2),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? "assets/images/Logo_light.png"
                    : "assets/images/Logo_dark.png",
                height: 146,
              ),
              Spacer(),
              PrimaryButton(
                  text: "Sign In",
                  press: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatScreen()))),
              SizedBox(
                height: kDefaultPadding * 1.5,
              ),
              PrimaryButton(
                text: "Sign Up",
                press: () {},
                color: Theme.of(context).colorScheme.secondary,
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
