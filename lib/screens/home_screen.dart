import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_task/models/user_model.dart';

class HomeScreen extends StatefulWidget {
  UserModel? currentUser;
  AccessToken? accessToken;

  HomeScreen({Key? key, this.accessToken, this.currentUser}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Center(
          child: Text(
            "Dog's Path",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: const Center(
        child: Text('Hello'),
      ),
    );
  }

  Future<void> signOut() async {
    await FacebookAuth.i.logOut();
    widget.currentUser = null;
    widget.accessToken = null;
    setState(() {});
  }
}
