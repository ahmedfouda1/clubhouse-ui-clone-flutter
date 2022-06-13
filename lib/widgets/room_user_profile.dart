import 'package:clubhouse_clone/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class RoomUserProfile extends StatelessWidget {
  final String image;
  final String name;
  final double size;
  final bool isNew;
  final bool isMuted;


  RoomUserProfile({
      Key? key,
    required  this.image,
    required  this.name,
      this.size = 42,
      this.isNew = false,
      this.isMuted = false,
   }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: UserProfileImage(image: image, size: size),
            ),
            if(isNew)
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0,2),
                          blurRadius: 4,
                        ),
                      ]
                  ),
                  child: Text(
                    ' 🎉 ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            if(isMuted)
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0,2),
                          blurRadius: 4,
                        ),
                      ]
                  ),
                  child: Icon(
                    CupertinoIcons.mic_slash_fill,
                  ),
                ),
              ),
          ],
        ),
        Flexible(
          child: Text(
            name,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
