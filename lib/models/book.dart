import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Book {
  final int bookId;
  final String title;
  final String thumbnailUrl;
  final int price;

  Book({
    @required this.bookId,
    @required this.title,
    @required this.thumbnailUrl,
    @required this.price,
  });
}
