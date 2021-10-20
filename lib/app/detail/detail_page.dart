import 'package:flutter/material.dart';
import 'package:google_books_test/models/book.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({Key? key, required this.book}) : super(key: key);
  final Book book;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(book.id),
            Text(book.info.title),
            Text(book.info.description),
            Text(book.info.pageCount.toString()),
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () => {},
              //onPressed: () => navigationservice.showEntryView(context, e: e),
            ),
          ]),
    ));
  }
}
