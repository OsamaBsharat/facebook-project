import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "facebook",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.message,
                    color: Colors.black,
                  )),
            ],
            bottom: TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.blue,
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.ondemand_video),
                  ),
                  Tab(
                    icon: Icon(Icons.group),
                  ),
                  Tab(
                    icon: Icon(Icons.notifications),
                  ),
                  Tab(
                    icon: Icon(Icons.menu),
                  ),
                ]),
          ),
          body: TabBarView(children: <Widget>[
            Icon(Icons.home),
            Icon(Icons.home),
            Icon(Icons.home),
            Icon(Icons.home),
            Icon(Icons.home),
          ])),
    );
  }
}
