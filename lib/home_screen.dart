import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menem/constants.dart';

import 'add post/addpost1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: appbar,
        title: Row(
          children: [
            const SizedBox(width: 10),
            photos("assets/images/claudia.jpg", 40, 36),
            const SizedBox(width: 30),
            Expanded(
              child: Container(
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: search,
                ),
                child: TextField(
                    style: const TextStyle(color: yellow, fontFamily: 'myFont'),
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search, color: grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          color: search,
                          width: 2.0,
                        ),
                      ),
                      fillColor: search,
                      filled: true,
                      contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      hintText: "Search",
                      hintStyle: const TextStyle(
                          fontFamily: "myFont", color: grey, fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    textInputAction: TextInputAction.done),
              ),
            ),
            const SizedBox(width: 10),
            Image.asset("assets/images/chat.jpeg", height: 45),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: appbar,
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Row(
            children: [
              const SizedBox(width: 20),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => addpost1()),
                  );
                },
                child: Image.asset("assets/images/add.jpeg", height: 30),
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){},
                child: Image.asset("assets/images/Me.jpeg", height: 30),
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){},
                child: Image.asset("assets/images/N-icon.png", height: 50),
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){},
                child: Image.asset("assets/images/eM.jpeg", height: 30),
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){},
                child: Image.asset("assets/images/certificate.jpeg", height: 30),
              ),
              const SizedBox(width: 20)
                 ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 7),
            post(
                "assets/images/claudia.jpg", "Claudia Deshmuk", "assets/images/verified.jpeg", 0,
                "  2 hr  (Edited)", "assets/images/post.jpeg", "201", " 81 Kudos"),

            const Divider(thickness: 1, color: grey),

            post(
                "assets/images/emily.jpg", "Emily Myiurpunch", "assets/images/verified.jpeg", 22,
                "  2 hr", "assets/images/emily.jpg", "180", " 77 Kudos"),

            const Divider(thickness: 1, color: grey),

            post("assets/images/claudia.jpg", "Sapna", "assets/images/verified.jpeg", 22,
                "  10 m", "assets/images/claudia.jpg", "7718", " 18 Kudos"),

            const Divider(thickness: 1, color: grey),
            post("assets/images/post3.jpg", "Sapna", "assets/images/verified.jpeg", 22,
                "  10 m", "assets/images/post3.jpg", "7718", " 18 Kudos"),

            const Divider(thickness: 1, color: grey),
            post("assets/images/post2.jpg", "Sapna", "assets/images/verified.jpeg", 22,
                "  10 m", "assets/images/post2.jpg", "7718", " 18 Kudos"),

            const Divider(thickness: 1, color: grey),
            post("assets/images/post1.jpg", "Sapna", "assets/images/verified.jpeg", 22,
                "  10 m", "assets/images/post1.jpg.jpg", "7718", " 18 Kudos"),

            const Divider(thickness: 1, color: grey),
            post("assets/images/post5.jpg", "Sapna", "assets/images/verified.jpeg", 22,
                "  10 m", "assets/images/post5.jpg", "7718", " 18 Kudos"),


            const Divider(thickness: 1, color: grey),
            post("assets/images/post6.jpg", "Sapna", "assets/images/verified.jpeg", 22,
                "  10 m", "assets/images/post6.jpg", "7718", " 18 Kudos"),


            const Divider(thickness: 1, color: grey),
            post("assets/images/post7.jpg", "Developer", "assets/images/verified.jpeg", 22,
                "  10 m", "assets/images/post7.jpg", "7718", " 18 Kudos"),


            const Divider(thickness: 1, color: grey),
            post("assets/images/post8.jpg", "Sonia", "assets/images/verified.jpeg", 22,
                "  10 m", "assets/images/post8.jpg", "7718", " 18 Kudos"),






          ],
        ),
      ),
    );
  }

  //Post Tab
  Widget post(String profile, String name, String verified, double size,
      String subtitle, String image, String stars, String kudos) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(width: 14),
            photos(profile, 50, 45),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BoldText(name, 20, white),
                Row(
                  children: [
                    const BoldText(" •", 18, grey),
                    const Icon(Icons.access_time, color: grey, size: 20),
                    BoldText(subtitle, 15, grey)
                  ],
                )
              ],
            ),
            const SizedBox(width: 12),
            Column(
              children: [
                Image.asset(verified, height: size),
                const SizedBox(
                  height: 22,
                )
              ],
            ),
            const Spacer(),
            MaterialButton(
                elevation: 0,
                color: yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                child: const BoldText("Boost", 18, background),
                onPressed: () {}),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color: white, size: 35)),
          ],
        ), //profile, name, verified, subtitle
        const SizedBox(height: 20),
        const Align(
            alignment: Alignment.topLeft,
            child: PlainText(
                "    " + "See the good in yourself and in others.", 18, white)),
        const SizedBox(height: 20),
        Container(
          height: 400,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ), //image
        const SizedBox(height: 20),
        Row(
          children: [
            const SizedBox(width: 15),
            Image.asset("assets/images/star.jpeg", height: 40),
            const SizedBox(width: 7),
            PlainText(stars, 20, white),
            const SizedBox(width: 25),
            Image.asset("assets/images/message.jpeg", height: 40),
            PlainText(kudos, 18, white),
            const Spacer(),
            Image.asset("assets/images/send.jpeg", height: 35),
            const SizedBox(width: 15),
          ],
        ), //stars, kudos
        const SizedBox(height: 10)
      ],
    );
  }

  //Profile images
  Widget photos(String image, double height, double width) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: white)),
    );
  }
}
