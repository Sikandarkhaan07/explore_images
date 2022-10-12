import 'package:flutter/material.dart';
import './screens/single_image_screen.dart';

import './models/demo_images.dart';
import './widgets/tabs_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
        accentColor: Colors.white,
      ),
      home: MyHomePage(),
      routes: {
        SingleImageDisplayScreen.routeName: (ctx) => SingleImageDisplayScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: const Text('Image lover'),
          bottom: TabBar(
            isScrollable: true,
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            indicator: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            splashBorderRadius: BorderRadius.circular(10),
            tabs: [
              Container(
                height: 30,
                width: 60,
                child: const Tab(
                  child: Text(
                    'Cat',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 60,
                child: const Tab(
                  child: Text(
                    'Dog',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 60,
                child: const Tab(
                  child: Text(
                    'Tiger',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabView(allImages),
      ),
    );
  }
}
