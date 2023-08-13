import 'package:flutter/material.dart';
import 'package:iti/api/model/success_story_model.dart';
import '../../dio/api_provider.dart';

class MessengerPageWithApi extends StatefulWidget {
  const MessengerPageWithApi({Key? key}) : super(key: key);

  @override
  State<MessengerPageWithApi> createState() => _MessengerPageWithApiState();
}

class _MessengerPageWithApiState extends State<MessengerPageWithApi> {
  getData() async {
    successStories = await ApiProvider().getStoreis();
    setState(() {
      loading = false;
    });
  }

// note there are two functions in StatefulWidget
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  bool loading = true;

  SuccessStories? successStories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                "https://wallpapercave.com/wp/wp1878697.jpg",
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
        child: Column(
          children: [
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
              height: 15,
            ),
            const SizedBox(height: 15),
            loading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  )
                : Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                      itemCount: successStories!.model!.length,
                      itemBuilder: (context, index) => buildChatItem(
                        successStories: successStories!,
                        index: index,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

Widget buildChatItem(
        {required SuccessStories successStories, required int index}) =>
    Row(
      children: [
        Stack(children: [
          CircleAvatar(
            radius: 30,
            child: Text(
              successStories.model![index].id!,
              style: const TextStyle(fontSize: 30),
            ),
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
                successStories.model![index].title!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 120, 103, 145)),
              ),
              Row(
                children: [
                  //Container // width: MediaQuery.of(context).size.width / 2,

                  Expanded(
                    child: Text(
                      successStories.model![index].image!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 18),
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
                    //  successStories.model![index].createdAt!.day.toString(),                  //  successStories.model![index].createdAt!.day.toString(),
                    successStories.model![index].createdAt!.substring(14),

                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
