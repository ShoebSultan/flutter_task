import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_task/controllers/controller.dart';
import 'package:flutter_task/models/user_model.dart';
import 'package:flutter_task/screens/home_list.dart';
import 'package:flutter_task/screens/login_screen.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  UserModel? currentUser;
  AccessToken? accessToken;

  HomeScreen({Key? key, this.accessToken, this.currentUser}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton(
                onPressed: () => signOut(), child: const Text('Sign Out')),
          ],
          backgroundColor: Colors.grey[800],
          title: const Center(
            child: Text(
              "Dog's Path",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: /* const HomeList() */

        Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: controller.homeList.length,
                itemBuilder: (BuildContext context, int index) {
                  return HomeList(homeScreenModel: controller.homeList[index]);
                },
              ),
      ),
        );
  }

  Future<void> signOut() async {
    await FacebookAuth.i.logOut();
    widget.currentUser = null;
    widget.accessToken = null;
    //setState(() {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }
}
