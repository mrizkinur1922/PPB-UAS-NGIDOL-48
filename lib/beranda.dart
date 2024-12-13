import 'package:flutter/material.dart';
import 'package:jkt48/main.dart';
import 'package:url_launcher/url_launcher.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //     textTheme: TextTheme(bodyText1: TextStyle(fontFamily: 'Poppins'))),
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
            Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 500,
                      height: 230,
                      child: Image.asset(
                        "image/BG.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Expanded(
                        child: Row(
                          children: [
                            gambar(gmbr: "image/banner1.jpg"),
                            gambar(gmbr: "image/banner2.jpg"),
                            gambar(gmbr: "image/banner3.jpg"),
                            gambar(gmbr: "image/banner4.jpg"),
                            gambar(gmbr: "image/banner5.jpg"),
                            gambar(gmbr: "image/banner6.jpg"),
                            gambar(gmbr: "image/banner7.png"),
                            gambar(gmbr: "image/banner8.jpg"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const blog())));
                          },
                          child: const Column(
                            children: [
                              Icon(
                                Icons.book,
                                color: Colors.red,
                                size: 20,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Blog",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const music()));
                          },
                          child: const Column(
                            children: [
                              Icon(
                                Icons.music_note,
                                color: Colors.red,
                                size: 20,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Lagu",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const vidcall()));
                          },
                          child: const Column(
                            children: [
                              Icon(
                                Icons.smartphone_sharp,
                                color: Colors.red,
                                size: 20,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Video Call",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const meet()));
                          },
                          child: const Column(
                            children: [
                              Icon(
                                Icons.festival,
                                color: Colors.red,
                                size: 20,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Meet n Greet",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const chant()));
                          },
                          child: const Column(
                            children: [
                              Icon(
                                Icons.music_video,
                                color: Colors.red,
                                size: 20,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Chant",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  color: const Color.fromARGB(255, 255, 129, 137),
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.cake,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Ulang Tahun Bulan Ini",
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Poppins'),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          children: [
                            member(
                              jkt: "member/raisha_syifa.png",
                              jabatan: "Member JKT48",
                              nama: "Raisha Syifa",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            member(
                              jkt: "member/cynthia.png",
                              jabatan: "Trainee JKT48",
                              nama: "Cynthia",
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              height: 80,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "JKT48 Merchandise",
                      style: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Official Merchandise From JKT48",
                      style: TextStyle(fontFamily: 'Poppins'),
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 145,
                color: Colors.white,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () async {
                        const url =
                            'https://www.tokopedia.com/officialjkt48/pre-order-jkt48-birthday-t-shirt-amanda-sukma-2024-l-2848a?extParam=src%3Dshop%26whid%3D4003898';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const merc(
                        prod: "merc/merc1.jpg",
                        pre: "( Pre-Order JKT48 )",
                        nama: "Birthday T-Shirt Amanda Sukma 2024",
                        harga: "Rp 195.000",
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        const url =
                            'https://www.tokopedia.com/officialjkt48/pre-order-jkt48-birthday-t-shirt-desy-natalia-2024-l-55fa2?extParam=src%3Dshop%26whid%3D4003898';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const merc(
                        prod: "merc/merc2.jpg",
                        pre: "( Pre-Order JKT48)",
                        nama: "Birthday T-Shirt Desy Natalia 2024",
                        harga: "Rp 195.000",
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        const url =
                            'https://www.tokopedia.com/officialjkt48/pre-order-jkt48-birthday-t-shirt-dena-natalia-2024-l-9466f?extParam=whid%3D4003898%26src%3Dshop';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const merc(
                        prod: "merc/merc3.jpg",
                        pre: "( Pre-Order JKT48)",
                        nama: "Birthday T-Shirt Dena Natalia 2024",
                        harga: "Rp 195.000",
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        const url =
                            'https://www.tokopedia.com/officialjkt48/lightstick-jkt48-newera-2-0?extParam=src%3Dshop%26whid%3D4003898';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const merc(
                        prod: "merc/merc4.jpg",
                        pre: "( Order Now JKT48 )",
                        nama: "Lightstick JKT48 Newera 2.0",
                        harga: "Rp 280.000",
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        const url =
                            'https://www.tokopedia.com/officialjkt48/jkt48-magic-hour-pandora-box-set?extParam=src%3Dshop%26whid%3D4003898';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const merc(
                        prod: "merc/merc5.jpg",
                        pre: "( Pre-Order Now JKT48 )",
                        nama: "Magic Hour Pandora Box Set",
                        harga: "Rp 480.000",
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        const url =
                            'https://www.tokopedia.com/officialjkt48/pre-order-jkt48-photobook-c-est-moi-shani?extParam=src%3Dshop%26whid%3D4003898';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const merc(
                        prod: "merc/merc6.jpg",
                        pre: "( Order Now JKT48)",
                        nama: "Photobook Cest Moi SHANI",
                        harga: "Rp 295.000",
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        const url =
                            'https://www.tokopedia.com/officialjkt48/jkt48-shani-last-voyage-sticker-pack?extParam=src%3Dshop%26whid%3D4003898';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const merc(
                        prod: "merc/merc7.jpg",
                        pre: "( Order Now JKT48 )",
                        nama: "Shani Last Voyage Sticker Pack",
                        harga: "Rp 50.000",
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        const url =
                            'https://www.tokopedia.com/officialjkt48/jkt48-sayonara-crawl-special-set?extParam=src%3Dshop%26whid%3D4003898';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const merc(
                        prod: "merc/merc8.jpg",
                        pre: "( Order Now JKT48 )",
                        nama: "Sayonara Crawl Special Set",
                        harga: "Rp 245.000",
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        const url =
                            'https://www.tokopedia.com/officialjkt48/jkt48-official-t-shirt-newera-white-4xl-07395?extParam=whid%3D4003898%26src%3Dshop';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const merc(
                        prod: "merc/merc9.jpg",
                        pre: "( Order Now JKT48 )",
                        nama: "T-shirt - NEWERA (White)",
                        harga: "Rp 180.000",
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        const url =
                            'https://www.tokopedia.com/officialjkt48/jkt48-neckstrap-kebun-binatang-saat-hujan-a-02824?extParam=src%3Dshop%26whid%3D4003898';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const merc(
                        prod: "merc/merc10.jpg",
                        pre: "( Order Now JKT48 )",
                        nama: "Neckstrap KBH Tipe A",
                        harga: "Rp 40.000",
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        const url =
                            'https://www.tokopedia.com/officialjkt48/jkt48-neckstrap-kebun-binatang-saat-hujan-b-b45d3?extParam=src%3Dshop%26whid%3D4003898';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const merc(
                          prod: "merc/merc11.jpg",
                          pre: "( Order Now JKT48 )",
                          nama: "Neckstrap KBH Tipe B",
                          harga: "Rp 40.000"),
                    ),
                    TextButton(
                      onPressed: () async {
                        const url =
                            'https://www.tokopedia.com/officialjkt48/jkt48-official-t-shirt-newera-sage-4xl-9cf70?extParam=src%3Dshop%26whid%3D4003898';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const merc(
                        prod: "merc/merc12.jpg",
                        pre: "( Order Now JKT48 )",
                        nama: "T-shirt - NEWERA (Sage)",
                        harga: "Rp 180.000",
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        const url =
                            'https://www.tokopedia.com/officialjkt48/jkt48-official-t-shirt-newera-khaki-4xl-a6bb2?extParam=src%3Dshop%26whid%3D4003898';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const merc(
                        prod: "merc/merc13.jpg",
                        pre: "( Order Now JKT48 )",
                        nama: "T-shirt - NEWERA (Khaki)",
                        harga: "Rp 180.000",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      ),
    );
  }
}

class gambar extends StatelessWidget {
  const gambar({super.key, this.gmbr});
  final gmbr;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 200,
      width: 350,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Expanded(
          child: Image.asset(
            gmbr,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class member extends StatelessWidget {
  const member({super.key, this.jkt, this.jabatan, this.nama});
  final jkt;
  final jabatan;
  final nama;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 87, 87),
                  width: 1.0,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  jkt,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 135, 175),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              width: 70,
              height: 20,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  jabatan,
                  style: const TextStyle(
                      fontSize: 7,
                      color: Color.fromARGB(255, 255, 22, 22),
                      fontFamily: 'Poppins'),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              nama,
              style: const TextStyle(
                  fontSize: 10, color: Colors.white, fontFamily: 'Poppins'),
            )
          ],
        ),
      ],
    );
  }
}

class merc extends StatelessWidget {
  const merc({super.key, this.prod, this.pre, this.harga, this.nama});
  final prod;
  final pre;
  final nama;
  final harga;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Image.asset(
              prod,
              height: 55,
            ),
            Text(
              pre,
              style: const TextStyle(fontFamily: 'Poppins'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Text(nama, style: const TextStyle(fontFamily: 'Poppins')),
            ),
            Text(harga,
                style: const TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}

class blog extends StatefulWidget {
  const blog({super.key});

  @override
  State<blog> createState() => _blogState();
}

class _blogState extends State<blog> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AppWrapper()));
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Blog",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15),
                )
              ],
            ),
            backgroundColor: const Color.fromARGB(255, 255, 17, 0),
          ),
          body: ListView(
            children: const [
              bloglayout(
                nama: "Riski Panu",
                status: "Fans",
                jam: "15 menit yang lalu",
                gambar: "blog/foto1.jpg",
                deskripsi: "Ayuuu Nemen Kang",
              ),
              bloglayoutnogmbr(
                nama: "Agil Jamur",
                status: "Fans",
                jam: "12 Jam yang lalu",
                deskripsi: "Gass ke event ga sih??,Mumpung Gratis wkwkw :v",
              ),
              bloglayout(
                nama: "Abi Boti",
                status: "Fans",
                jam: "1 jam yang lalu",
                gambar: "blog/2.jpg",
                deskripsi: "Selingkuhan gw",
              ),
            ],
          )),
    );
  }
}

class bloglayout extends StatelessWidget {
  const bloglayout(
      {super.key,
      this.nama,
      this.status,
      this.jam,
      this.gambar,
      this.deskripsi});
  final nama;
  final status;
  final jam;
  final gambar;
  final deskripsi;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    nama,
                    style: const TextStyle(
                        fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    status,
                    style: const TextStyle(
                        fontFamily: 'Poppins', color: Colors.red),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    jam,
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  gambar,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    deskripsi,
                    style: const TextStyle(fontFamily: 'Poppins'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class bloglayoutnogmbr extends StatelessWidget {
  const bloglayoutnogmbr(
      {super.key, this.nama, this.status, this.jam, this.deskripsi});
  final nama;
  final status;
  final jam;
  final deskripsi;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    nama,
                    style: const TextStyle(
                        fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    status,
                    style: const TextStyle(
                        fontFamily: 'Poppins', color: Colors.red),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    jam,
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    deskripsi,
                    style: const TextStyle(fontFamily: 'Poppins'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class music extends StatefulWidget {
  const music({super.key});

  @override
  State<music> createState() => _musicState();
}

class _musicState extends State<music> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AppWrapper()));
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              const Text(
                "Lagu",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15),
              )
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 255, 17, 0),
        ),
        body: ListView(
          children: [
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  slidermusic(
                    gambar: "music/mahagita2.webp",
                  ),
                  slidermusic(
                    gambar: "music/aturan.jpeg",
                  ),
                  slidermusic(
                    gambar: "music/banzai.jpg",
                  ),
                  slidermusic(
                    gambar: "music/sayonara.jpg",
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 25, bottom: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sedang Trend...",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          cardmucis(
                            foto: "music/banzai.jpg",
                            judul: "seventeen\n",
                          ),
                          cardmucis(
                            foto: "music/pajama.jpeg",
                            judul: "Hisatsu Tele-\nport",
                          ),
                          cardmucis(
                            foto: "music/aitakata.jpg",
                            judul: "Aitakata\n",
                          ),
                          cardmucis(
                            foto: "music/rapsodi.jpg",
                            judul: "Rapsodi\n",
                          ),
                          cardmucis(
                            foto: "music/sayonara.jpg",
                            judul: "Sayonara\nCrawl",
                          ),
                          cardmucis(
                            foto: "music/Flying_High.png",
                            judul: "Flying\nHigh",
                          ),
                          cardmucis(
                            foto: "music/Heavy_Rotation.jpg",
                            judul: "Heavy\nRotation",
                          ),
                          cardmucis(
                            foto: "music/aturan.jpeg",
                            judul: "Virus Bertipe\nhati",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 25, left: 25, bottom: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Banyak Yang Menyukai",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        cardmucis(
                          foto: "music/banzai.jpg",
                          judul: "seventeen\n",
                        ),
                        cardmucis(
                          foto: "music/pajama.jpeg",
                          judul: "Hisatsu Tele-\nport",
                        ),
                        cardmucis(
                          foto: "music/aitakata.jpg",
                          judul: "Aitakata\n",
                        ),
                        cardmucis(
                          foto: "music/rapsodi.jpg",
                          judul: "Rapsodi\n",
                        ),
                        cardmucis(
                          foto: "music/newera.jpg",
                          judul: "Eurika Milik\nKita",
                        ),
                        cardmucis(
                          foto: "music/Flying_High.png",
                          judul: "Flying\nHigh",
                        ),
                        cardmucis(
                          foto: "music/Heavy_Rotation.jpg",
                          judul: "Heavy\nRotation",
                        ),
                        cardmucis(
                          foto: "music/aturan.jpeg",
                          judul: "Jiwaru Days",
                        ),
                        cardmucis(
                          foto: "music/mahagita2.webp",
                          judul: "Only Today",
                        ),
                        cardmucis(
                          foto: "music/fortune.jpg",
                          judul: "First Rabit",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 25, bottom: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Single Original",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        cardmucis(
                          foto: "music/rapsodi.jpg",
                          judul: "Rapsodi",
                        ),
                        cardmucis(
                          foto: "music/Flying_High.png",
                          judul: "Flying High",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 255, 17, 0),
      ),
    );
  }
}

class slidermusic extends StatelessWidget {
  const slidermusic({super.key, this.gambar});
  final gambar;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 200,
      width: 350,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Image.asset(
        gambar,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}

class cardmucis extends StatelessWidget {
  const cardmucis({super.key, this.foto, this.judul});
  final foto;
  final judul;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  foto,
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  judul,
                  style: const TextStyle(
                      fontFamily: 'Poppins', color: Colors.red, fontSize: 10),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class vidcall extends StatefulWidget {
  const vidcall({super.key});

  @override
  State<vidcall> createState() => _vidcallState();
}

class _vidcallState extends State<vidcall> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AppWrapper()));
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Video call",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15),
                )
              ],
            ),
            backgroundColor: const Color.fromARGB(255, 255, 17, 0),
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  height: 600,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.smartphone,
                        color: Colors.red,
                        size: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Untuk saat ini belum ada event Video Call",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text("Tunggu informasi lebih lanjut untuk event"),
                      Text("video call kedepan")
                    ],
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 255, 17, 0),
        ));
  }
}

class meet extends StatefulWidget {
  const meet({super.key});

  @override
  State<meet> createState() => _meetState();
}

class _meetState extends State<meet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AppWrapper()));
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Meet n Greet",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15),
                )
              ],
            ),
            backgroundColor: const Color.fromARGB(255, 255, 17, 0),
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  height: 600,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.festival_outlined,
                        color: Colors.red,
                        size: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Untuk saat ini belum ada personal meet n greet",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text("Tunggu informasi lebih lanjut untuk event"),
                      Text("meet n greet kedepan")
                    ],
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 255, 17, 0),
        ));
  }
}

class chant extends StatefulWidget {
  const chant({super.key});

  @override
  State<chant> createState() => _chantState();
}

class _chantState extends State<chant> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AppWrapper()));
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Chant JKT48",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15),
                )
              ],
            ),
            backgroundColor: const Color.fromARGB(255, 255, 17, 0),
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  height: 600,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.music_video,
                        color: Colors.red,
                        size: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Untuk saat ini belum ada chant yang dibuat",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text("Tunggu update lebih lanjut"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 255, 17, 0),
        ));
  }
}
