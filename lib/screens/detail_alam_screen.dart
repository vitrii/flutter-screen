import 'package:flutter/material.dart';

class DetailAlamScreen extends StatelessWidget {
  final String kategori;
  final String image;
  final List<String> gallery;
  final String penjelasan;

  DetailAlamScreen({
    super.key,
    required this.kategori,
    required this.image,
    required this.gallery,
    required this.penjelasan,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kategori),
         backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image,
               fit: BoxFit.cover, width: double.infinity, height: 250),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                kategori,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                penjelasan,
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Gallery",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
              ),
             ),
           ),
           SizedBox(height: 10.0),
           Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: gallery.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                    image: AssetImage(gallery[index]),
                    fit: BoxFit.cover,
                  ),
                ),
               );
              },
            ),
           ),
          ],
        ),
      ),
    );
  }
}