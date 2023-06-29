import 'package:flutter/material.dart';

class MyFlutter extends StatefulWidget {
  MyFlutter({super.key});

  @override
  State<MyFlutter> createState() => _MyFlutterState();
}

class _MyFlutterState extends State<MyFlutter> {
  List samplelist = [
    {
      "image": "images/1.jpg",
      "name": "Music Night",
      "time": "9.00 pm - 11 pm",
      "description":
          "At vero eos et accusamus et iusto odio dignissimos ducimus"
    },
    {
      "image": "images/2.jpg",
      "name": "Happy Hours!",
      "time": "9.00 pm - 11 pm",
      "description":
          "At vero eos et accusamus et iusto odio dignissimos ducimus"
    },
    {
      "image": "images/3.jpg",
      "name": "Cooking Lessons",
      "time": "9.00 pm - 11 pm",
      "description":
          "At vero eos et accusamus et iusto odio dignissimos ducimus"
    },
    {
      "image": "images/4.jpg",
      "name": "It's Yoga Time",
      "time": "9.00 pm - 11 pm",
      "description":
          "At vero eos et accusamus et iusto odio dignissimos ducimus"
    },
  ];

  //  '',
  //'',
  // ""

  Widget musiclist(String name, String time, String image, String desc) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2.0,
                  blurRadius: 2.0,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          child: Container(
                            height: 120,
                            child: Image.asset(
                              image,
                              fit: BoxFit.fitHeight,
                              width: 120,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Text(
                                  name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.lock_clock),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5.0, bottom: 15.0),
                                    child: Text(
                                      time,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                desc,
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10, top: 15.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.bookmark_border),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return musiclist(samplelist[index]["name"], samplelist[index]["time"],
              samplelist[index]["image"], samplelist[index]["description"]);
        },
      ),
    );
  }
}
