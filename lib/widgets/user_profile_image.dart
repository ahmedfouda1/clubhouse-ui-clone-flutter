import 'package:flutter/material.dart';
import '../data.dart';

class UserProfileImage extends StatelessWidget {
  final String image;
  final double size;

  const UserProfileImage(
      {Key? key,
        required this.image,
        required this.size}
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size/2 - size/10),
      child: Image.network(
        image,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
