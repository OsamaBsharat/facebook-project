import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                friendStory(
                    friendStory: "assets/Images/story/s1.jpg",
                    friendName: "Ibraheem B.",
                    friendPicture: "assets/Images/pic2.jpg"),
                friendStory(
                    friendStory: "assets/Images/story/s2.jpg",
                    friendName: "Adam Shaheen",
                    friendPicture: "assets/Images/Pic3.jpg"),
                friendStory(
                    friendStory: "assets/Images/story/s3.jpg",
                    friendName: "أ.محمد بشارات",
                    friendPicture: "assets/Images/pic4.jpg"),
                friendStory(
                    friendStory: "assets/Images/story/s4.jpg",
                    friendName: "Linda Bsharat",
                    friendPicture: "assets/Images/pic5.jpg"),
                friendStory(
                    friendStory: "assets/Images/story/s5.jpg",
                    friendName: "Abdullah Jihad",
                    friendPicture: "assets/Images/pic6.jpg"),
                friendStory(
                    friendStory: "assets/Images/pic2.jpg",
                    friendName: "Osama Ahmad",
                    friendPicture: "assets/Images/pic2.jpg"),
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
          friendPost(context),
          friendPost(context),
          friendPost(context),
          friendPost(context),
          friendPost(context),
          friendPost(context),
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

Widget friendStory({friendStory, friendName, friendPicture}) {
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
              Container(
                width: 40,
                height: 40,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.blue,
                      style: BorderStyle.solid,
                      width: 2,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        friendPicture,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                friendName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget friendPost(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
      bottom: 5,
      top: 5,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 450,
          color: Colors.amber,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 7.67,
                      height: 50,
                      color: Colors.teal,
                      child: Image.asset(
                        "assets/Images/pic5.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width / 1.3529,
                              height: 20,
                              color: Colors.red,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width / 1.3529,
                              height: 30,
                              color: Colors.green,
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 7.67,
                          height: 50,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
