import 'dart:math';

import 'package:clubhouse_clone/widgets/room_user_profile.dart';
import 'package:clubhouse_clone/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data.dart';
import '../models/rooms.dart';

class RoomScreen extends StatelessWidget {
  final Room room;

  const RoomScreen({
    Key? key,
    required this.room,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 130,
        leading: TextButton.icon(
          style: TextButton.styleFrom(
            primary: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            CupertinoIcons.chevron_down,
          ),
          label: Text(
            'Hallway',
          ),
        ),
        actions: [

          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.doc,
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
      body: Container(
        padding: EdgeInsets.all(20.0),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${room.club} 🏠'.toUpperCase(),
                        style: Theme.of(context).textTheme.overline!.copyWith(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.0,
                      ),
                      ),
                      Icon(CupertinoIcons.ellipsis),
                    ],
                  ),
                  Text(
                    room.name,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 15.0,
                children:
                  room.speakers.map((e) => RoomUserProfile(
                      image: e.image,
                      name: e.firstName,
                    size: 66,
                    isNew: Random().nextBool(),
                    isMuted: Random().nextBool(),
                  )).toList(),
                  ),
            ),
      SliverToBoxAdapter(
        child: Text(
          room.name,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[500],
          ),
        ),
      ),
      SliverPadding(
        padding: const EdgeInsets.all(14.0),
        sliver: SliverGrid.count(
          crossAxisCount: 4,
          childAspectRatio: 0.7,
          mainAxisSpacing: 15.0,
          children:
          room.followedBySpeakers.map((e) => RoomUserProfile(
            image: e.image,
            name: e.firstName,
            size: 66,
            isNew: Random().nextBool(),
          )).toList(),
        ),
      ),
            SliverToBoxAdapter(
              child: Text(
                'Others in the room',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                childAspectRatio: 0.7,
                mainAxisSpacing: 15.0,
                children:
                room.others.map((e) => RoomUserProfile(
                  image: e.image,
                  name: e.firstName,
                  size: 66,
                  isNew: Random().nextBool(),
                )).toList(),
              ),
            ),
            SliverPadding(padding: EdgeInsets.only(bottom: 50)),
      ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: (){},
                child: Text(
                  '✌🏻 Leave quickly',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(12),
                backgroundColor: Colors.grey[300],
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    padding: EdgeInsets.all(6),
                    child: Icon(CupertinoIcons.add,size: 30,),
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    padding: EdgeInsets.all(6),
                    child: Icon(CupertinoIcons.hand_raised,size: 30,),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
