import 'package:flutter/material.dart';

import '../models/user_model.dart';

class BuildChatItem extends StatelessWidget {
  const BuildChatItem({super.key, required this.user});
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(user.imagePath),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.green,
              radius: 8,
            ),
          )
        ]),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: [
                  //Container // width: MediaQuery.of(context).size.width / 2,

                  Expanded(
                    child: Text(
                      user.message,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.circle,
                    size: 7,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    user.date,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
