import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sharedprefference/view/login_screen/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          width: 120,
          height: 60,
          child: Image.network(
            "https://logos-world.net/wp-content/uploads/2020/04/Instagram-Logo.png",
            fit: BoxFit.fill,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 130,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.green,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            "https://bestprofilepictures.com/wp-content/uploads/2021/08/Amazing-Profile-Picture-for-Facebook.jpg"),
                      ),
                    ),
                  ),
                  Text("UserID"),
                ],
              ),
            ),
          ),
          Container(
            height: 700,
            child: ListView.builder(
              itemBuilder: (context, index) => Column(
                children: [
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 27,
                            backgroundColor: Colors.green,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  "https://bestprofilepictures.com/wp-content/uploads/2021/08/Amazing-Profile-Picture-for-Facebook.jpg"),
                            ),
                          ),
                          Text(
                            "UserID",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.black,
                          ),
                        ]),
                  ),
                  Container(
                    height: 350,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Image.network(
                      "https://colorlib.com/wp/wp-content/uploads/sites/2/instagram-post-design-template-with-shadow-projections.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.send,
                          color: Colors.black,
                          size: 30,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
