import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mind_mate/data/data.dart';
import 'package:mind_mate/screens/console.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: GestureDetector(
                        onTap: () {
                          print("tappedddddd");
                        },
                        child: SvgPicture.asset(
                          'assets/svg/acc.svg',
                          width: 35.0,
                          height: 35.0,
                          color: const Color.fromARGB(255, 240, 237, 237),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/profile');
                      },
                      child: Text(
                        "Hello, Gaurav",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 252, 252, 252)),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: GestureDetector(
                        onTap: () {
                          print("tapeddddddd");
                        },
                        child: SvgPicture.asset(
                          'assets/svg/dots.svg',
                          width: 35.0,
                          height: 35.0,
                          color: const Color.fromARGB(255, 239, 235, 235),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/logo.png",
                            height: 90,
                            width: 90,
                          ),
                          Text(
                            "Mind-Mate",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Your everyday AI companion",
                        style: TextStyle(
                          color: Color.fromARGB(255, 214, 214, 208),
                          fontSize: 18,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Carousel Slider
              CarouselSlider(
                options: CarouselOptions(
                  height: 270.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 1000),
                  viewportFraction: 0.8,
                ),
                items: [
                  {
                    'image': 'assets/images/dating.jpeg',
                    'text':
                        'What are some good questions to ask on a first date?'
                  },
                  {
                    'image': 'assets/images/money.jpeg',
                    'text':
                        'How to start investing with a small amount of money?'
                  },
                  {
                    'image': 'assets/images/plant.jpeg',
                    'text':
                        'How do I know if my plant is getting too much or too little sunlight?'
                  },
                  {
                    'image': 'assets/images/temple.jpeg',
                    'text':
                        'Tell me about the history and significance of the Meenakshi Temple in Madurai?'
                  },
                  {
                    'image': 'assets/images/gym.jpeg',
                    'text':
                        'What are the advantages of using cables versus dumbbells for biceps exercises?'
                  },
                ]
                    .map((item) => GestureDetector(
                      onTap: () {},
          
                      child: Container(
                            margin: EdgeInsets.all(5.0),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    image: DecorationImage(
                                      image: AssetImage(item['image']!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 8,
                                  left: 10.0,
                                  right: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 72, 70, 70)
                                          .withOpacity(0.7),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5.0, horizontal: 10.0),
                                    child: Text(
                                      item['text']!,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontFamily: 'Roboto',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                    ))
                    .toList(),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 26, 25, 25),
                        const Color.fromARGB(255, 0, 0, 0)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('|',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 255, 0, 0))),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Personal Assistant",
                        style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: listItems.length,
                itemBuilder: (context, index) {
                  return PostListItem(item: listItems[index]);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 26, 25, 25),
                        const Color.fromARGB(255, 0, 0, 0)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('|',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 255, 0, 0))),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Innovative Media Utilities",
                        style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: listItems2.length,
                itemBuilder: (context, index) {
                  return MediaListItem(item2: listItems2[index]);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 26, 25, 25),
                        const Color.fromARGB(255, 0, 0, 0)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('|',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 255, 0, 0))),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "HobbyBoost & Learnings",
                        style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: listItems3.length,
                itemBuilder: (context, index) {
                  return LearnListItem(item3: listItems3[index]);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 26, 25, 25),
                        const Color.fromARGB(255, 0, 0, 0)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('|',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 255, 0, 0))),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "AI Smart Solutions",
                        style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: listItems4.length,
                itemBuilder: (context, index) {
                  return AiassListItem(item4: listItems4[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PostListItem extends StatelessWidget {
  final dynamic item;

  const PostListItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ConsolePage(
              imageUrl: item.imageUrl,
              title: item.title,
              subtitle: item.subtitle,
              comments: item.comments,
              likes: item.likes,
              que1: item.que1,
              que2: item.que2,
              que3: item.que3,
              que4: item.que4,
            ),
          ),
        );
      },
      child: Card(
        color: Color.fromARGB(255, 14, 14, 14), // Change the card color
        margin: EdgeInsets.all(12.0),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                item.imageUrl,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 17),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(height: 3),
                    Text(
                      item.subtitle,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.comment,
                            color: const Color.fromARGB(255, 211, 73, 63),
                            size: 14),
                        SizedBox(width: 5),
                        Text(item.comments,
                            style: TextStyle(color: Colors.white)),
                        SizedBox(width: 15),
                        Icon(Icons.thumb_up,
                            color: const Color.fromARGB(255, 211, 73, 63),
                            size: 14),
                        SizedBox(width: 5),
                        Text(item.likes, style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MediaListItem extends StatelessWidget {
  final dynamic item2;

  const MediaListItem({required this.item2});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ConsolePage(
              imageUrl: item2.imageUrl,
              title: item2.title,
              subtitle: item2.subtitle,
              comments: item2.comments,
              likes: item2.likes,
              que1: item2.que1,
              que2: item2.que2,
              que3: item2.que3,
              que4: item2.que4,
            ),
          ),
        );
      },
      child: Card(
        color: Color.fromARGB(255, 14, 14, 14), // Change the card color
        margin: EdgeInsets.all(12.0),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                item2.imageUrl,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 17),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item2.title,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(height: 3),
                    Text(
                      item2.subtitle,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.comment,
                            color: const Color.fromARGB(255, 211, 73, 63),
                            size: 14),
                        SizedBox(width: 5),
                        Text(item2.comments,
                            style: TextStyle(color: Colors.white)),
                        SizedBox(width: 15),
                        Icon(Icons.thumb_up,
                            color: const Color.fromARGB(255, 211, 73, 63),
                            size: 14),
                        SizedBox(width: 5),
                        Text(item2.likes,
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LearnListItem extends StatelessWidget {
  final dynamic item3;

  const LearnListItem({required this.item3});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ConsolePage(
              imageUrl: item3.imageUrl,
              title: item3.title,
              subtitle: item3.subtitle,
              comments: item3.comments,
              likes: item3.likes,
              que1: item3.que1,
              que2: item3.que2,
              que3: item3.que3,
              que4: item3.que4,
            ),
          ),
        );
      },
      child: Card(
        color: Color.fromARGB(255, 14, 14, 14), // Change the card color
        margin: EdgeInsets.all(12.0),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                item3.imageUrl,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 17),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item3.title,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(height: 3),
                    Text(
                      item3.subtitle,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.comment,
                            color: const Color.fromARGB(255, 211, 73, 63),
                            size: 14),
                        SizedBox(width: 5),
                        Text(item3.comments,
                            style: TextStyle(color: Colors.white)),
                        SizedBox(width: 15),
                        Icon(Icons.thumb_up,
                            color: const Color.fromARGB(255, 211, 73, 63),
                            size: 14),
                        SizedBox(width: 5),
                        Text(item3.likes,
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AiassListItem extends StatelessWidget {
  final dynamic item4;

  const AiassListItem({required this.item4});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ConsolePage(
              imageUrl: item4.imageUrl,
              title: item4.title,
              subtitle: item4.subtitle,
              comments: item4.comments,
              likes: item4.likes,
              que1: item4.que1,
              que2: item4.que2,
              que3: item4.que3,
              que4: item4.que4,
            ),
          ),
        );
      },
      child: Card(
        color: Color.fromARGB(255, 14, 14, 14), // Change the card color
        margin: EdgeInsets.all(12.0),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                item4.imageUrl,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 17),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item4.title,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(height: 3),
                    Text(
                      item4.subtitle,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.comment,
                            color: const Color.fromARGB(255, 211, 73, 63),
                            size: 14),
                        SizedBox(width: 5),
                        Text(item4.comments,
                            style: TextStyle(color: Colors.white)),
                        SizedBox(width: 15),
                        Icon(Icons.thumb_up,
                            color: const Color.fromARGB(255, 211, 73, 63),
                            size: 14),
                        SizedBox(width: 5),
                        Text(item4.likes,
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
