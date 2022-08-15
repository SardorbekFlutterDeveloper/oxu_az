import 'package:flutter/material.dart';
import 'package:oxu_az/core/constants/core.dart';
import 'package:oxu_az/views/Home/second_home.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? _tabbarController;
  TabController? controller;
  int page = 1;
  Key? _key;
  bool isSize = true;

  @override
  void initState() {
    super.initState();
    _tabbarController = TabController(length: 5, vsync: this);
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: const [
            Text(
              "oxu",
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.amber,
              ),
            ),
            Text(
              ".az",
              style:
                  TextStyle(color: Colors.white, backgroundColor: Colors.black),
            )
          ],
        ),
        bottom: TabBar(
          isScrollable: true,
          controller: _tabbarController,
          indicatorColor: Colors.amber,
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.black,
          automaticIndicatorColorAdjustment: true,
          tabs: TabBBar.myTabs,
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                      bottom: 20,
                    ),
                    height: 210,
                    // width: 200,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        myPageView(2),
                      ],
                    ),
                  ),
                  TabPageSelector(
                    color: Colors.white,
                    controller: controller,
                    key: _key,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Latest news",
                    style: TextStyle(color: Colors.black, fontSize: 30.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      my_news(20, "minutes ago"),
                      my_news(1, "hours ago"),
                      my_news(2, "hours ago"),
                      my_news(15, "minutes ago"),
                      my_news(34, "minutes ago"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Stack my_news(int image_num, String name) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 40, bottom: 20),
          child: Container(
            height: 150,
            width: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
                const Positioned(
                  top: 10,
                  right: -10,
                  child: SizedBox(
                    width: 180,
                    child: Text(
                      "Animals get boost from Southampton  tree vandals",
                      // maxLines: 4,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${image_num}  $name ",
                        style: const TextStyle(color: Colors.black),
                      ),
                      const SizedBox(width: 40),
                      const Icon(Icons.bookmark, color: Colors.amber),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 20,
          child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(offset: Offset(1, 1), color: Colors.transparent),
              ],
              color: Colors.yellow,
              image: DecorationImage(
                image: NetworkImage(
                    "https://source.unsplash.com/random/$image_num"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  TabBarView myPageView(int time) {
    return TabBarView(
      controller: controller,
      children: [
        SizedBox(
          height: 200,
          width: 150,
          child: Stack(
            children: [
              InkWell(
              
                child: Container(
                  key: _key,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image:
                          NetworkImage("https://source.unsplash.com/random/9"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Positioned(
                bottom: 0,
                left: 40,
                child: SizedBox(
                  width: 250,
                  height: 100,
                  child: SizedBox(
                    width: 150,
                    child: Text(
                      "A ruggedly beautiful quarantine site",
                      // maxLines: 4,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${time + 4} hourse ago",
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(width: 160),
                    const Icon(Icons.bookmark, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          width: 150,
          child: Stack(
            children: [
              Container(
                key: _key,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: NetworkImage("https://source.unsplash.com/random/2"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Positioned(
                bottom: 0,
                left: 40,
                child: SizedBox(
                  width: 250,
                  height: 100,
                  child: SizedBox(
                    width: 150,
                    child: Text(
                      "A ruggedly beautiful quarantine site",
                      // maxLines: 4,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${time + 1} hourse ago",
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(width: 160),
                    const Icon(Icons.bookmark, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          width: 150,
          child: Stack(
            children: [
              Container(
                key: _key,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: NetworkImage("https://source.unsplash.com/random/8"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Positioned(
                bottom: 0,
                left: 40,
                child: SizedBox(
                  width: 250,
                  height: 100,
                  child: SizedBox(
                    width: 150,
                    child: Text(
                      "A ruggedly beautiful quarantine site",
                      // maxLines: 4,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$time hourse ago",
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(width: 160),
                    const Icon(Icons.bookmark, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          width: 150,
          child: Stack(
            children: [
              Container(
                key: _key,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: NetworkImage("https://source.unsplash.com/random/4"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Positioned(
                bottom: 0,
                left: 40,
                child: SizedBox(
                  width: 250,
                  height: 100,
                  child: SizedBox(
                    width: 150,
                    child: Text(
                      "A ruggedly beautiful quarantine site",
                      // maxLines: 4,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${time + 2} hourse ago",
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(width: 160),
                    const Icon(Icons.bookmark, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
