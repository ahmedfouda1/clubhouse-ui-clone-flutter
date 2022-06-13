import 'dart:math';

import 'package:clubhouse_clone/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/room_card.dart';
import '../widgets/user_profile_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.search,
            size: 28,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.envelope_open,
              size: 28,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.calendar,
              size: 28,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.bell,
              size: 28,
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: UserProfileImage(
                  size: 34.0,
                  image: currentUser.image,
                )),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 100.0),
            children: [
              ...roomList.map((e) => RoomCard(room: e)),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context)
                          .scaffoldBackgroundColor
                          .withOpacity(0.1),
                      Theme.of(context).scaffoldBackgroundColor,
                    ]),
              ),
            ),
          ),
          Positioned(
            bottom: 50.0,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.add,
                size: 21,
                color: Colors.white,
              ),
              label: Text(
                'Start a room',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
             style: ElevatedButton.styleFrom(
               padding: EdgeInsets.all(12.0),
               primary: Theme.of(context).accentColor,
               shape: const RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(Radius.circular(20)),
               ),
             ),
            ),
          ),
        ],
      ),
    );
  }
}
