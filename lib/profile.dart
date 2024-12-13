import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              children: [
                Image.asset(
                  "image/logo.jpeg",
                  width: 40,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "image/new.png",
                  width: 50,
                  fit: BoxFit.cover,
                )
              ],
            ),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 87, 87),
                              width: 1.0,
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              "image/pp.jpeg",
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Riyan Hidayat",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "riyanhidayat@gmail.com",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color.fromARGB(106, 0, 0, 0),
                              fontSize: 10),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          "0",
                          style: TextStyle(color: Colors.red),
                        ),
                        Text(
                          "Lagu Disukai",
                          style: TextStyle(
                              fontFamily: 'Poppins', color: Colors.red),
                        )
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          "0",
                          style: TextStyle(color: Colors.red),
                        ),
                        Text(
                          "Tulisan",
                          style: TextStyle(
                              fontFamily: 'Poppins', color: Colors.red),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                child: const Column(
                  children: [
                    Icon(
                      Icons.book,
                      color: Colors.red,
                      size: 50,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Tidak ada blog untuk saat ini",
                      style: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
