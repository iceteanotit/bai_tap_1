import 'package:bai_tap_1/views/widgets/gradient_text.dart';
import 'package:bai_tap_1/views/widgets/screen_argument.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const signInRoutes = '/';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: _createSignUpScreen(),
      ),
    );
  }

  final Shader linearGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFfc7f3f), Color(0xFFff2a6b)],
  ).createShader(const Rect.fromLTWH(0, 0, 200, 70));

  Widget _createSignUpScreen() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFfc7f3f), Color(0xFFff2a6b)],
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/ic_connexion.png',
                    width: 140,
                    height: 140,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'CONN',
                        style: TextStyle(fontSize: 30, color: Color(0xFFff2f83), fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'EXION',
                        style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 24),
                    child: const Text(
                      'Find and Meet people around\nyou to find LOVE',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: const BorderSide(color: Colors.white),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 66,
                      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/ic_facebook.png',
                            width: 24,
                            height: 24,
                          ),
                          const VerticalDivider(
                            indent: 6.0,
                            endIndent: 6.0,
                            thickness: 1.0,
                            color: Color(0xFFff6666),
                          ),
                          const GradientText(
                            'Sign in with Facebook',
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xffff774e), Color(0xffff3470)],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: const BorderSide(color: Colors.white),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 66,
                      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/ic_twitter.png',
                            width: 24,
                            height: 24,
                          ),
                          const VerticalDivider(
                            indent: 6.0,
                            endIndent: 6.0,
                            thickness: 1.0,
                            color: Color(0xFFff6666),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 16),
                            child: const GradientText(
                              'Sign in with Twitter',
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xffff774e), Color(0xffff3470)],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: const BorderSide(color: Colors.white),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 66,
                      alignment: Alignment.center,
                      child: const GradientText(
                        'Sign Up',
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xffff774e), Color(0xffff3470)],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // via router
                      Navigator.pushNamed(context, '/second', arguments: ScreenArgument('title', 'message'));
                    },
                    child: const Text(
                      'ALREADY REGISTERED SIGN IN',
                      style: TextStyle(color: Colors.white, decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
