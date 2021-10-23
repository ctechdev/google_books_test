import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_books_test/app/books/books_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'books_consumer.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textEditingController = useTextEditingController();
    return SafeArea(
      child: Scaffold(

        body: Stack(
          children:  <Widget>[
            const Positioned(
              top: 30,
              left: 20,
              child:  SizedBox(
                      width: 260,
                      child: Text('Explore thousands of books on the go', 
                      style:  TextStyle(
                          //color: Color(0xffC4C6CC),
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Brutal',
                        ),
                          maxLines: 2))),
              Positioned(
                top:110,
                left: 20,
                right:20,
                child: SearchBar(textEditingController: textEditingController)),
              Positioned(
                top:185,
                left: 20,
                right:20,
                bottom: 4,
                child: BookConsumer( query: textEditingController.text)),
          ],
        )
      ),
    );
  }
}

class SearchBar extends ConsumerWidget {
  const SearchBar({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context, ref) {
    return Material(
       shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 5,
      child: SizedBox(
            height: 60.0,
            width: double.infinity,
            child: CupertinoTextField(
              onSubmitted: (value) => ref
                  .read(booksNotifierProvider.notifier)
                  .getBooks(textEditingController.text),
              controller: textEditingController,
              keyboardType: TextInputType.text,
              placeholder: 'Search for Books...',
              placeholderStyle: const TextStyle(
                color: Color(0xffC4C6CC),
                fontSize: 16.0,
                fontFamily: 'Brutal',
              ),
              prefix: const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 6.0, 4.0, 6.0),
                child: Icon(
                  Icons.search,
                  color: Color(0xffC4C6CC),
                  size: 30,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0xffF0F1F5),
              ),
            ),
          ),
    );
  }
}
