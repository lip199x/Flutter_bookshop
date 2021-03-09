import 'package:flutter/material.dart';
import 'package:flutter_bookshop/screens/book_detail.dart';
import 'package:flutter_bookshop/screens/book_list.dart';
import 'package:provider/provider.dart';
import './providers/cart_provider.dart';

void main() {
  runApp(BookShopApp());
}

class BookShopApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Cart>(
      create: (context) => Cart(),
      child: MaterialApp(
        title: 'Book Shop',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.green,
        ),
        home: BookList(),
        routes: {BookDetail.routeName: (context) => BookDetail()},
      ),
    );
  }
}
