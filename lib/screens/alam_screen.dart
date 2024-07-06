import 'package:flutter/material.dart';
import 'detail_alam_screen.dart';

class ListAlamScreen extends StatelessWidget {
  final List<Map<String, dynamic>> alamData = [
    {
      "kategori": "Gunung",
      "image": "assets/images/alamgunung.jpg",
      "gallery": [
        "assets/images/alamgunung1.jpg",
        "assets/images/alamgunung2.jpg",
        "assets/images/alamgunung3.jpg"
      ],
      "penjelasan": "Gunung adalah merupakan suatu keindahan alam. Gunung adalah suatu bentuk lahan yang menjulang tinggi secara signifikan di atas daerah sekitarnya. Sebuah gunung mempunyai keunggulan, sisi curam dan ketinggian yang signifikan di atas permukaan laut dan daerah sekitarnya."
    },
    {
      "kategori": "Laut",
      "image": "assets/images/laut.jpg",
      "gallery": [
        "assets/images/laut1.jpg",
        "assets/images/laut2.jpg",
        "assets/images/laut3.jpg"
      ],
      "penjelasan": "Laut merupakan bagian dari alam.Laut adalah kumpulan air asin yang sangat luas yang memisahkan benua yang satu dengan benua yang lainnya, dan juga memisahkan pulau yang satu dengan yang lainnya. "
    },
    {
      "kategori": "Hutan",
      "image": "assets/images/hutan.jpg",
      "gallery": [
        "assets/images/hutan1.jpg",
        "assets/images/hutan2.jpg",
        "assets/images/hutan4.jpg"
      ],
      "penjelasan": "Hutan adalah suatu daerah tertentu yang tanahnya ditumbuhi pepohonan tempat hidup segala binatang. Hutan adalah suatu lapangan pohon-pohon secara keseluruhan yang merupakan persekutuan hidup alam hayati beserta alam lingkungannya."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori Alam'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: alamData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailAlamScreen(
                        kategori: alamData[index]["kategori"],
                        image: alamData[index]["image"],
                        gallery: alamData[index]["gallery"],
                        penjelasan: alamData[index]["penjelasan"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(alamData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    alamData[index]["kategori"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}