import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  // final int bookId;
  // final String title;
  // final String thumbnailUrl;
  // final int price;

  // BookDetail(
  //   this.bookId,
  //   this.title,
  //   this.thumbnailUrl,
  //   this.price,
  // );

  static const routeName = '/book-detail';

  @override
  Widget build(BuildContext context) {
    final book = ModalRoute.of(context).settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(book["title"]),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              book["thumbnailUrl"],
              fit: BoxFit.cover,
            ),
            Text("${book["price"]} บาท",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            FlatButton(
              onPressed: () {},
              height: 45,
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                "Add to Cart",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
