import 'package:flutter/material.dart';
import 'package:flutter_task/controllers/controller.dart';
import 'package:flutter_task/models/home_screen_model.dart';
import 'package:get/get.dart';

class HomeList extends StatefulWidget {
  final HomeScreenModel homeScreenModel;
  const HomeList({Key? key, required this.homeScreenModel}) : super(key: key);

  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(widget.homeScreenModel.title!),
      ],
    );
  }
}
/* Column(
      mainAxisSize: MainAxisSize.max,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.grey[800],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Dach Crest',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const Text(
                    '7 SUb Paths',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 80,
                color: Colors.black,
                child: const Text(
                  'Open Path',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        Container(
          //height: 300,
          width: double.infinity,
          height: 200,
          color: Colors.blue,
          child: Image.asset(
            "assets/image.gif",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          color: Colors.black,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Candlewood Country Club',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  '->',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'Candlewood Country Club',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  '->',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ],
    ); */
/*  children: [
        Row(
          children: [
            Column(
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text('id542'),
                    const Text('Hane Throw'),
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text('1'),
                    const Text('subpath'),
                  ],
                )
              ],
            ),
            Container(
              height: 10,
              width: 10,
              color: Colors.black,
              child: const Text(
                'Open Path',
                style: TextStyle(color: Colors.blueGrey),
              ),
            )
          ],
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Image.asset(
              "assets/image.gif",
              fit: BoxFit.contain,
            ),
            /*  ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset(
                  "assets/image.gif",
                  fit: BoxFit.contain,
                ),
                /*  Image.asset("assets/image.gif"),
                Image.asset("assets/image.gif"), */
              ],
            ), */
          ],
        ),
        Row(
          children: [
            Container(
              color: Colors.black,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Text('Hello'),
                  SizedBox(
                    width: 5,
                  ),
                  Text('->'),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Hello'),
                  SizedBox(
                    width: 5,
                  ),
                  Text('->'),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Hello'),
                ],
              ),
            ),
          ],
        ),
      ], */
