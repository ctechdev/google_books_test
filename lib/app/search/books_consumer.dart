import 'package:flutter/material.dart';
import 'package:google_books_test/app/books/books_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'book_item_widget.dart';

class BookConsumer extends ConsumerWidget {
  const BookConsumer({Key? key, required this.query}) : super(key: key);
  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookList = ref.watch(booksNotifierProvider);

    return bookList.when(
        initial: () => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                Image.asset('assets/searching.png',
                  width: 120, semanticLabel: 'Search Books',),
              ],),),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error) => const Text('Oops, error'),
        data: (books) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Text('Search results',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        //color: Color(0xffC4C6CC),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,

                        fontFamily: 'Brutal',
                      ),
                      maxLines: 2,),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                      return BookItem(
                        books: books,
                        index: index,
                      );
                    },
                  ),
                )
              ],
            ),);
  }
}
