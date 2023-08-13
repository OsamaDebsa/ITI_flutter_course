import 'package:flutter/material.dart';

import '../models/user_model.dart';

class BuildStoryItem extends StatelessWidget {
  const BuildStoryItem({super.key, required this.user});
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                user.imagePath,
              )),
          const SizedBox(height: 7),
          Text(
            user.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
