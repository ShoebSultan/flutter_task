import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_task/models/user_model.dart';
import 'package:flutter_task/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AccessToken? _accessToken;
  UserModel? _currentUser;

  Future<void> signIn() async {
    final LoginResult result = await FacebookAuth.i.login();

    if (result.status == LoginStatus.success) {
      _accessToken = result.accessToken;
      final data = await FacebookAuth.i.getUserData();
      UserModel userModel = UserModel.fromJson(data);

      _currentUser = userModel;

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen(
                    accessToken: _accessToken,
                    currentUser: _currentUser,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: size.width * 0.08,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              Text(
                'Sign in with your facebook account',
                style:
                    TextStyle(fontSize: size.width * 0.04, color: Colors.white),
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              InkWell(
                onTap: () => signIn(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius:
                        BorderRadius.all(Radius.circular(size.height * 0.005)),
                  ),
                  width: size.width * 0.8,
                  height: size.height * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/fb.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.1,
                      ),
                      const Text(
                        "Sign in with Facebook",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
