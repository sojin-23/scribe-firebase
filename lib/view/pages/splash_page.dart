import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:page_transition/page_transition.dart';
import 'package:scribe/utils/constants.dart';
import 'package:scribe/view/pages/sign_in_page.dart';
import 'package:scribe/view/pages/sign_up_page.dart';
import 'package:scribe/view/widgets/my_buttons.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: AnimationLimiter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 1500),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: -50.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: [
                    Column(
                      children: [],
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "scribe",
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          "your digital memory bank",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MyButtons(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          width: screenWidth,
                          onPressed: () {
                            HapticFeedback.mediumImpact();
                            Navigator.pushReplacement(
                                context,
                                PageTransition(
                                    duration: const Duration(milliseconds: 500),
                                    reverseDuration:
                                        const Duration(microseconds: 500),
                                    child: const LoginPage(),
                                    type: PageTransitionType.rightToLeft));
                          },
                          name: "Sign in",
                          buttonColor: Pallete.secondaryColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MyButtons(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          width: screenWidth,
                          onPressed: () {
                            HapticFeedback.mediumImpact();
                            Navigator.of(context).pushReplacement(
                                PageTransition(
                                    duration: const Duration(milliseconds: 500),
                                    child: const SignUpPage(),
                                    type: PageTransitionType.rightToLeft));
                          },
                          name: "Sign up",
                          buttonColor: Pallete.backgroundColor,
                          borderColor: Border.all(color: Pallete.borderColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
