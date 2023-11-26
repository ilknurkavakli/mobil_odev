import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  const Color.fromRGBO(62, 36, 17, 1),
                  const Color.fromRGBO(48, 14, 32, 1),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(width: 35, "assets/images/logo.png"),
                              SizedBox(width: 5),
                              Text(
                                "Music",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.podcasts,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundImage:
                                    AssetImage("assets/images/profil.jpg"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryItem("Energize"),
                          CategoryItem("Workout"),
                          CategoryItem("Feel good"),
                          CategoryItem("Relaxtation"),
                          CategoryItem("Chill out"),
                          CategoryItem("Rock"),
                          CategoryItem("Pops"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Color.fromRGBO(7, 5, 8, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "START RADIO FROM A SONG",
                            style: TextStyle(
                              color: Color.fromARGB(255, 187, 186, 186),
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Quick Picks",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 3.0, bottom: 3, right: 9, left: 9),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Text(
                                  "play all",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 187, 186, 186),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                         
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width: size.width - 40,
                                  child: Column(
                                    children: [
                                      MusicRow("assets/images/p1.jpg",
                                          "Moments", "Paulwetz & Dillistone"),
                                      MusicRow("assets/images/p2.jpg",
                                          "Warrior", "Oscar & Dthe wolf"),
                                      MusicRow("assets/images/p3.jpg",
                                          "Cymetrics", "Nigel Stanford"),
                                      MusicRow("assets/images/p4.jpg",
                                          "Sen Ve Yildiz", "Mavi"),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    MusicRow("assets/images/p5.jpg",
                                        "Bitsin Bu Delilik", "Cihan Mürtezaoğlu"),
                                    MusicRow("assets/images/p3.jpg",
                                        "Cymetrics", "Nigel Stanford"),
                                      MusicRow("assets/images/p2.jpg",
                                        "Warrior", "Oscar & Dthe wolf"),
                                    MusicRow("assets/images/p8.jpg",
                                        "Cold", "GUCCI MANE FT.B.G."),
                                  ],
                                ),
                                Column(
                                  children: [
                                    MusicRow("assets/images/p6.jpg",
                                        "Başka Hikayeler", "Buray"),
                                    MusicRow("assets/images/p7.jpg",
                                        "Dünya Senin", "İlyas Yalçıntaş"),
                                    MusicRow("assets/images/p5.jpg",
                                        "Bitsin Bu Delilik", "Cihan Mürtezaoğlu"),
                                    MusicRow("assets/images/p4.jpg",
                                        "Sen Ve Yildiz", "Mavi"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Forgetten favorites",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 3.0, bottom: 3, right: 9, left: 9),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Text(
                                  "play all",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 187, 186, 186),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                MusicRow2("assets/images/p1.jpg", "Moments",
                                    "Paulwetz & Dillistone"),
                                MusicRow2("assets/images/p2.jpg", "Warrior",
                                    "Oscar & Dthe wolf"),
                                MusicRow2("assets/images/p3.jpg", "Cymetrics",
                                    "Nigel Stanford"),
                                MusicRow2("assets/images/p4.jpg",
                                    "Sen Ve Yildiz", "Mavi"),
                                MusicRow2("assets/images/p5.jpg", "Bitsin Bu Delilik",
                                    "Cihan Mürtezaoğlu"),
                                MusicRow2("assets/images/p6.jpg",
                                    "Başka Hikayeler", "Buray"),
                                MusicRow2("assets/images/p7.jpg", "Dünya Senin",
                                    "İlyas Yalçıntaş"),
                                MusicRow2("assets/images/p8.jpg", "COLD",
                                    "İGUCCI MANE FT.B.G."),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                color: Color.fromRGBO(33, 33, 33, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                          ),
                          Text(
                            "Samples",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.explore,
                            color: Colors.white,
                          ),
                          Text(
                            "Explore",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.subscriptions,
                            color: Colors.white,
                          ),
                          Text(
                            "Library",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.slideshow,
                            color: Colors.white,
                          ),
                          Text(
                            "Upgrade",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Padding MusicRow2(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                photo,
                width: 150,
              ),
              SizedBox(height: 5),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                artist,
                style: TextStyle(
                  color: const Color.fromARGB(255, 181, 181, 181),
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget MusicRow(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                photo,
                width: 75,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    artist,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 181, 181, 181),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Container CategoryItem(String text) {
    return Container(
      padding:
          const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12, right: 12),
      margin: const EdgeInsets.only(left: 3, right: 3),
      decoration: BoxDecoration(
        color: Color.fromARGB(47, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromARGB(36, 255, 255, 255),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
