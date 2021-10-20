import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_books_test/models/book.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../top_level_providers.dart';

class DetailPage extends ConsumerStatefulWidget {
  const DetailPage({Key? key, required this.book}) : super(key: key);
  final Book book;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends ConsumerState<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            leading: IconButton(
                color: Colors.black,
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton.icon(
                    onPressed: () {
                      addToFavourites();
                    },
                    icon: const Icon(
                      Icons.bookmark_add_outlined,
                      color: Colors.black,
                    ),
                    label: const Text(
                      'Add to favourites',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Brutal',
                      ),
                    )),
              )
            ],
          ),
          body: Center(
            child: ListView(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: SizedBox(
                                height: 180,
                                width: 120,
                                child: Image.network(
                                  widget.book.info.imageLinks['smallThumbnail']
                                      .toString(),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 200,
                              child: Text(widget.book.info.title,
                                  style: const TextStyle(
                                    //color: Color(0xffC4C6CC),
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Brutal',
                                  ),
                                  maxLines: 2),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: 140,
                              child: Text(
                                'by ${widget.book.info.authors.toString().trim().replaceAll('[', '').replaceAll(']', '')}',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.withOpacity(0.70)),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              widget.book.info.publisher,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.withOpacity(0.70)),
                            )
                          ],
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 24, 8, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(widget.book.info.averageRating.toString()),
                              const SizedBox(width: 4),
                              Icon(
                                Icons.star,
                                color: Colors.yellow[600],
                                size: 20,
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(widget.book.info.ratingsCount.toString()),
                              const SizedBox(width: 4),
                              const Text('ratings')
                            ],
                          )
                        ]),
                        SizedBox(
                          child: Text('|',
                              style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.grey.withOpacity(0.50))),
                        ),
                        Column(children: <Widget>[
                          const Icon(Icons.book_outlined),
                          Text(widget.book.info.printType),
                        ]),
                        SizedBox(
                          child: Text('|',
                              style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.grey.withOpacity(0.50))),
                        ),
                        Column(
                          children: <Widget>[
                            Text(widget.book.info.pageCount.toString()),
                            const Text('pages'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                        child: Text(
                          'Info about this book',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Brutal',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                        child: SizedBox(
                          width: width - 32,
                          child: widget.book.info.description.isNotEmpty
                              ? Text(
                                  widget.book.info.description,
                                  maxLines: 15,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Brutal',
                                  ),
                                )
                              : const Text('No additional info available',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Brutal',
                                  )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                          child: Chip(
                            shape: const StadiumBorder(side: BorderSide()),
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                            backgroundColor: Colors.transparent,
                            label: widget.book.info.categories.isNotEmpty
                                ? Text(widget.book.info.categories.first,
                                    style: const TextStyle(fontSize: 14))
                                : const Text('Uncategorized'),
                          )),
                    ],
                  )
                ]),
          )),
    );
  }

  Future<void> addToFavourites() async {
    final firestoreInstance = FirebaseFirestore.instance;
    var currentUser = FirebaseAuth.instance.currentUser;

    firestoreInstance
        .collection('users')
        .doc(currentUser!.uid)
        .collection('books')
        .add({
      'title': widget.book.info.title,
      'authors': widget.book.info.authors,
      'publisher': widget.book.info.publisher,
      'averageRating': widget.book.info.averageRating,
      'categories': widget.book.info.categories,
      'description': widget.book.info.description,
      'pageCount': widget.book.info.pageCount,
      'printType': widget.book.info.printType,
      'ratingsCount': widget.book.info.ratingsCount,
      'imageLinks': widget.book.info.imageLinks['thumbnail'].toString(),
    }).then((_) {
      print("success!");
    });
  }
}
