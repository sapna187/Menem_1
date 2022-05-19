// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

import '../images.dart';


class addpost3 extends StatefulWidget {
  const addpost3({Key? key}) : super(key: key);

  @override
  State<addpost3> createState() => _addpost3State();
}

class _addpost3State extends State<addpost3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 51, 51, 1),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 35,
            ),
          ),
        ),
        title: null,
        actions: [
          Center(
            child: Text(
              'Add new post',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        profileImage,
                        width: MediaQuery.of(context).size.width / 7,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Claudia Deshmuk',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'write exactly what you desire....',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      // fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ]),
          // Spacer(),

          Image.asset(
            post1,
            width: MediaQuery.of(context).size.width / 1,
            height: MediaQuery.of(context).size.height / 2,
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(
                color: Colors.white70,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  cursorColor: Colors.white38,
                  decoration: InputDecoration(
                      hintText: 'Tag here',
                      prefixIcon: Icon(
                        Icons.discount,
                        color: Colors.white,
                      ),
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.white38,
                      )),
                ),
              ),
              Divider(
                color: Colors.white70,
                thickness: 2,
              ),
            ],
          )
        ],
      ),
      persistentFooterButtons: [
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  certificateGrey,
                )),
            SizedBox(
              width: 50,
            ),
            IconButton(onPressed: () {}, icon: Image.asset(gallery)),
            SizedBox(
              width: 50,
            ),
            IconButton(onPressed: () {}, icon: Image.asset(pen)),
            SizedBox(
              width: 50,
            ),
            Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text('Post',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ])),
          ],
        ),
      ],
    );
  }
}
