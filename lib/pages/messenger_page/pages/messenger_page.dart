import 'package:flutter/material.dart';
import 'package:iti/pages/messenger_page/models/user_model.dart';
import '../widgets/build_chat_item.dart';
import '../widgets/build_story_item.dart';

class MessengerPage extends StatelessWidget {
  MessengerPage({super.key});
  final List<UserModel> users = [
    UserModel(
      name: "Salah",
      message: "lablabalbalab",
      date: "02:04 AM",
      imagePath:
          "https://i.pinimg.com/originals/49/5a/5b/495a5b9af868c1ea2a0af24dfa32ba03.jpg",
    ),
    UserModel(
      name: "hazard",
      message: "lablaasdsadsalab",
      date: "11:04 PM",
      imagePath:
          "https://i.pinimg.com/originals/c3/bb/18/c3bb18fe886a4a029a7ba664166630f5.png",
    ),
    UserModel(
      name: "Messi",
      message: "kjhgfdfgfdgfgdgfdgf",
      date: "08:04 AM",
      imagePath:
          "https://i.pinimg.com/originals/7d/5c/83/7d5c834bc2ffbe69d99149d3a79eedd4.jpg",
    ),
    UserModel(
      name: "Ronaldo",
      message: "vgbuhnjkmkujyhtbgjhnbgf",
      date: "03:07 AM",
      imagePath:
          "https://www.ronaldo7.net/news/2016/04/1102-cristiano-ronaldo-bulging-eyes-and-surprised-face.jpg",
    ),
    UserModel(
      name: "Nymar",
      message: "lolikujhngbfvdclbalab",
      date: "12:12 AM",
      imagePath:
          "https://assets.telegraphindia.com/telegraph/e6e81986-35e2-4851-8a2e-df159df84a5c.jpg",
    ),
    UserModel(
      name: "Toni-Kroos",
      message: "ldasdabakjhgbfvalab",
      date: "02:04 AM",
      imagePath:
          "https://3.bp.blogspot.com/-ZkHf-Pzu8w8/VFpkQuYR3LI/AAAAAAAAD6A/FtP5ForaL_c/s1600/Biography-of-Toni-Kroos.JPG",
    ),
    UserModel(
      name: "modric",
      message: "lablabalbalab",
      date: "02:04 AM",
      imagePath:
          "https://cdn.images.dailystar.co.uk/dynamic/204/photos/620000/936x622/1390620.jpg",
    ),
    UserModel(
      name: "De bruyne",
      message: "lablabalbalab",
      date: "02:04 AM",
      imagePath:
          "https://guernseypress.com/resizer/G1hxc94uyZIlKAp-yLx9_eedgsw=/1200x0/cloudfront-us-east-1.images.arcpublishing.com/mna/AAV7QZIOENA25JVEYTGBNWCKJI.jpg",
    ),
    UserModel(
      name: "mahrezr",
      message: "lablabalbalab",
      date: "02:04 AM",
      imagePath:
          "https://en.africatopsports.com/wp-content/uploads/2020/10/mahrezr-650x450-1.jpg",
    ),
    UserModel(
      name: "Salah",
      message: "lablabalbalab",
      date: "02:04 AM",
      imagePath:
          "https://i.pinimg.com/originals/49/5a/5b/495a5b9af868c1ea2a0af24dfa32ba03.jpg",
    ),
    UserModel(
      name: "hazard",
      message: "lablabalbalab",
      date: "02:04 AM",
      imagePath:
          "https://i.pinimg.com/originals/c3/bb/18/c3bb18fe886a4a029a7ba664166630f5.png",
    ),
    UserModel(
      name: "Messi",
      message: "lablabalbalab",
      date: "02:04 AM",
      imagePath:
          "https://i.pinimg.com/originals/7d/5c/83/7d5c834bc2ffbe69d99149d3a79eedd4.jpg",
    ),
    UserModel(
      name: "Ronaldo",
      message: "lablabalbalab",
      date: "02:04 AM",
      imagePath:
          "https://www.ronaldo7.net/news/2016/04/1102-cristiano-ronaldo-bulging-eyes-and-surprised-face.jpg",
    ),
    UserModel(
      name: "Nymar",
      message: "lablabalbalab",
      date: "02:04 AM",
      imagePath:
          "https://assets.telegraphindia.com/telegraph/e6e81986-35e2-4851-8a2e-df159df84a5c.jpg",
    ),
    UserModel(
      name: "Toni-Kroos",
      message: "lablabalbalab",
      date: "02:04 AM",
      imagePath:
          "https://3.bp.blogspot.com/-ZkHf-Pzu8w8/VFpkQuYR3LI/AAAAAAAAD6A/FtP5ForaL_c/s1600/Biography-of-Toni-Kroos.JPG",
    ),
    UserModel(
      name: "modric",
      message: "lablabalbalab",
      date: "02:04 AM",
      imagePath:
          "https://biografieonline.it/img/bio/gallery/l/Luka_Modric_4.jpg",
    ),
    UserModel(
      name: "De bruyne",
      message: "lablabalbalab",
      date: "02:04 AM",
      imagePath:
          "https://guernseypress.com/resizer/G1hxc94uyZIlKAp-yLx9_eedgsw=/1200x0/cloudfront-us-east-1.images.arcpublishing.com/mna/AAV7QZIOENA25JVEYTGBNWCKJI.jpg",
    ),
    UserModel(
      name: "mahrezr",
      message: "lablabalbalab",
      date: "02:04 AM",
      imagePath:
          "https://en.africatopsports.com/wp-content/uploads/2020/10/mahrezr-650x450-1.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation use To remover bottom border to AppBar
        elevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/originals/49/5a/5b/495a5b9af868c1ea2a0af24dfa32ba03.jpg",
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Chats",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ],
        ),
        actions: const [
          CircleAvatar(
            radius: 20,
            child: Icon(Icons.camera_alt, size: 25),
          ),
          SizedBox(
            width: 6,
          ),
          CircleAvatar(
            radius: 20,
            child: Icon(Icons.create, size: 25),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 30,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color.fromARGB(255, 189, 187, 187),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.search),
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Text("Search")
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) => BuildStoryItem(
                  user: users[index],
                ),
                itemCount: users.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ListView.separated(
              // to solve errors ==> shrinkWrap : true
              // physics: NeverScrollableScrollPhysics : to stop scroll the bottom piece of page
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>
                  BuildChatItem(user: users[index]),
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemCount: users.length,
            ),
          ]),
        ),
      ),
    );
  }
}
