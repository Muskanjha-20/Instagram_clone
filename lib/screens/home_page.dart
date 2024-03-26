import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> storyProfile = [
    "assets/girl1.jpg",
    "assets/girl2.jpg",
    "assets/girl3.jpg",
    "assets/girl1.jpg",
    "assets/girl2.jpg",
    "assets/girl3.jpg",
    "assets/girl1.jpg",
    "assets/girl2.jpg",
    "assets/girl3.jpg",
  ];

  List<String> posts = [
    "assets/girl1.jpg",
    "assets/girl2.jpg",
    "assets/girl3.jpg",
    "assets/girl1.jpg",
    "assets/girl2.jpg",
    "assets/girl3.jpg",
    "assets/girl1.jpg",
    "assets/girl2.jpg",
    "assets/girl3.jpg",
  ];
  Future<void> onRefresh() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(
                  "assets/insta_logo.png",
                ),
                height: 60,
              ),
              Spacer(),
              Icon(
                Icons.favorite_outline_sharp,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.message_outlined,
                size: 30,
              ),
            ],
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        storyProfile.length,
                        (index) {
                          return Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      const AssetImage("assets/story.png"),
                                  child: CircleAvatar(
                                    radius: 32,
                                    backgroundImage: AssetImage(
                                      storyProfile[index],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Profile name",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const Divider(),
                  Column(
                    children: List.generate(
                      9,
                      (index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: CircleAvatar(
                                    radius: 16,
                                    backgroundImage: const AssetImage(
                                      "assets/story.png",
                                    ),
                                    child: CircleAvatar(
                                      radius: 14,
                                      backgroundImage: AssetImage(
                                        storyProfile[index],
                                      ),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Profile name",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.more_vert_rounded,
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              posts[index],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite_outline,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.mode_comment_outlined,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.share,
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.bookmark_border_outlined,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      children: [
                                        TextSpan(text: "Liked by "),
                                        TextSpan(
                                          text: "Profile name",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(text: " and "),
                                        TextSpan(
                                          text: "others",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //for comment and captions
                                  RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "Profile name",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(text: " Caption "),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    "View all comments",
                                    style: TextStyle(color: Colors.black38),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
