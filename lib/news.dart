import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class news extends StatefulWidget {
  const news({super.key});

  @override
  State<news> createState() => _newsState();
}

class _newsState extends State<news> {
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
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Center(
                child: Text(
                  "Pengumuman Terbaru!",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                const url = 'https://jkt48.com/news/detail/id/1868?lang=id';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: const berita(
                deskripsi:
                    "Pengumuman Mengenai Live Streaming JKT48 26th Single Sousenkyo Announcement Result",
                kotak: "Event",
                tgl: "10 Desember 2024",
              ),
            ),
            TextButton(
              onPressed: () async {
                const url = 'https://jkt48.com/news/detail/id/1867?lang=id';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: const berita(
                deskripsi:
                    "Pengumuman Mengenai Live Streaming Wonderland | JKT48 13th Anniversary Concert",
                kotak: "Theater",
                tgl: "10 Desember 2024",
              ),
            ),
            TextButton(
              onPressed: () async {
                const url = 'https://jkt48.com/news/detail/id/1867?lang=id';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: const berita(
                deskripsi:
                    "Pengumuman Mengenai Pre-Order Digital Photobook “WONDERLAND” dengan bonus Video Call with JKT48",
                kotak: "Event",
                tgl: "8 Desember 2024",
              ),
            ),
             TextButton(
              onPressed: () async {
                const url = 'https://jkt48.com/news/detail/id/1865?lang=id';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: const berita(
                deskripsi:
                    "Pengumuman Mengenai Birthday 2-Shot Online bulan Desember dengan Chekicha",
                kotak: "Birthday",
                tgl: "5 Desember 2024",
              ),
            ),
             TextButton(
              onPressed: () async {
                const url = 'https://jkt48.com/news/detail/id/1864?lang=id';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: const berita(
                deskripsi:
                    "Pengumuman Mengenai JKT48 WONDERLAND Ticket Giveaway",
                kotak: "Event",
                tgl: "30 November 2024",
              ),
            ),
             TextButton(
              onPressed: () async {
                const url = 'https://jkt48.com/news/detail/id/1863?lang=id';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: const berita(
                deskripsi:
                    "Informasi Peraturan dan Timetable JKT48 26th Single Personal Meet and Greet Festival",
                kotak: "Event",
                tgl: "24 November 2024",
              ),
            ),
             TextButton(
              onPressed: () async {
                const url = 'https://jkt48.com/news/detail/id/1861?lang=id';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: const berita(
                deskripsi:
                    "Pengumuman Mengenai Trial Livestream JKT48 Special Theater Show Aturan Anti Cinta – Ladies and Kids Day di IDN App",
                kotak: "Theater",
                tgl: "20 November 2024",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class berita extends StatelessWidget {
  const berita({super.key, this.deskripsi, this.kotak, this.tgl});
  final deskripsi;
  final kotak;
  final tgl;

  @override
  Widget build(BuildContext context) {
    // Tentukan warna berdasarkan jenis kotak
    Color boxColor;
    switch (kotak.toLowerCase()) {
      case 'event':
        boxColor = Colors.blue;
        break;
      case 'theater':
        boxColor = Colors.purple;
        break;
      case 'birthday':
        boxColor = Colors.green;
        break;
      case 'other':
        boxColor = Colors.black;
        break;
      default:
        boxColor = Colors.grey; // Warna default jika kotak tidak cocok
    }

    return Container(
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                deskripsi,
                style: const TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 100,
                      height: 20,
                      decoration: BoxDecoration(
                          color: boxColor,
                          borderRadius: const BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          kotak,
                          style: const TextStyle(
                              color: Colors.white, fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  tgl,
                  style: const TextStyle(fontFamily: 'Poppins'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
