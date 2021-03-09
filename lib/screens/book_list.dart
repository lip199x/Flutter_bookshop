import 'package:flutter/material.dart';
import 'package:flutter_bookshop/components/badge.dart';
import 'package:flutter_bookshop/components/book_item.dart';
import '../models/book.dart';

class BookList extends StatelessWidget {
  List<Book> bookList = [
    Book(
      bookId: 0,
      title: 'Zend Framework in Action',
      thumbnailUrl:
          'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/allen.jpg',
      price: 100,
    ),
    Book(
      bookId: 1,
      title: 'Flex on Java',
      thumbnailUrl:
          'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/allmon.jpg',
      price: 200,
    ),
    Book(
      bookId: 2,
      title: 'Explorer Guide to the Semantic Web',
      thumbnailUrl:
          'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/passin.jpg',
      price: 300,
    ),
    Book(
      bookId: 3,
      title: 'Magical A-Life Avatars',
      thumbnailUrl:
          'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/small.jpg',
      price: 250,
    ),
    Book(
      bookId: 4,
      title: 'Hello! Flex 4',
      thumbnailUrl:
          'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/armstrong3.jpg',
      price: 150,
    ),
    Book(
      bookId: 5,
      title: 'Internet BBSs',
      thumbnailUrl:
          'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/mark.jpg',
      price: 420,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Books"),
          actions: [Badge()],
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, i) => BookItem(bookList[i].bookId,
              bookList[i].title, bookList[i].thumbnailUrl, bookList[i].price),
          itemCount: bookList.length,
          padding: EdgeInsets.all(10),
        ));
  }
}
