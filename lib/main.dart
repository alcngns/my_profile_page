import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final url = "https://productimages.hepsiburada.net/s/25/375-375/10102725771314.jpg";
  final String nameSurname = "Alican Güneş";
  final job = "Flutter Developer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(widget.title, style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(url),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              nameSurname,
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              job,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              color: Colors.deepPurple,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                   Expanded(child: Column(
                     children: [
                       Text(
                         "1.5 K",
                         style: TextStyle(
                             fontSize: 20.0,
                             fontWeight: FontWeight.bold,
                             color: Colors.white
                         ),
                       ),
                       Text(
                         "Follower",
                         style: TextStyle(
                             fontWeight: FontWeight.normal,
                             fontSize: 17.0,
                             color: Colors.white
                         ),
                       ),
                     ],
                   ),
                   ),
                    Expanded(child: Column(
                      children: [
                        Text(
                          "2.5 K",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Follow",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 17.0,
                              color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    ),
                    Expanded(child: Column(
                      children: [
                        Text(
                          "150",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Post",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 17.0,
                              color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              color: Colors.deepPurpleAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About Me",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                        "I develop user-friendly mobile applications with Flutter.",
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage("https://dijitalkarga.com/wp-content/uploads/2017/08/Instagram.jpg"),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage("https://image.hurimg.com/i/hurriyet/75/600x338/64c438674e3fe021fcd95d00.jpg"),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage("https://cdn.prod.website-files.com/5f10ed4b2ae6bc09c03f5d7a/64959d5f65a257fb51a4259c_github.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
