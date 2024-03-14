import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 9, top: 9),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person_pin,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              "What's on your mind ?!                                                   ",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                color: Colors.blue,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: 40,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.videocam,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5,
                                    ),
                                    child: Text("Live"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: 40,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.photo_library_outlined,
                                    color: Colors.green,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5,
                                    ),
                                    child: Text("Photo"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: 40,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5,
                                    ),
                                    child: Text("Check in"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 10,
                color: Colors.black26,
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                MyStory(MyStory: "assets/Images/Pic1.jpg"),
                friendStory(friendStory: "assets/Images/pic1.jpg",friendName: "Osama Shaheen"),
                friendStory(friendStory: "assets/Images/pic2.jpg",friendName: "Osama Shaheen"),
                friendStory(friendStory: "assets/Images/pic3.jpg",friendName: "Osama Shaheen"),
                friendStory(friendStory: "assets/Images/pic4.jpg",friendName: "Osama Shaheen"),
                friendStory(friendStory: "assets/Images/pic5.jpg",friendName: "Osama Shaheen"),
                friendStory(friendStory: "assets/Images/pic6.jpg",friendName: "Osama Shaheen"),
                friendStory(friendStory: "assets/Images/pic7.jpg",friendName: "Osama Shaheen"),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 10,
                color: Colors.black26,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget MyStory({MyStory}) {
  return Padding(
    padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
    child: Container(
      width: 120,
      height: 150,
      color: Colors.amber,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            MyStory,
            fit: BoxFit.cover,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_circle),
                color: Colors.white,
                iconSize: 40,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                "Add to Story",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget friendStory({friendStory,friendName}) {
  return Padding(
    padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
    child: Container(
      width: 120,
      height: 150,
      color: Colors.amber,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            friendStory,
            fit: BoxFit.cover,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_circle),
                color: Colors.white,
                iconSize: 40,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                friendName,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
