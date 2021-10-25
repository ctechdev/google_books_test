import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_books_test/models/book_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailsPage extends ConsumerStatefulWidget {
  const DetailsPage({Key? key, required this.book}) : super(key: key);
  final BookModel book;
//TODO BookModel
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends ConsumerState<DetailsPage> {
  @override
  Widget build(BuildContext context) {
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
                                child: widget.book.volumeInfo.imageLinks != null
                                    ? Image.network(
                                        widget.book.volumeInfo.imageLinks!
                                            .thumbnail,
                                        fit: BoxFit.fill,
                                      )
                                    : Image.asset('assets/no_cover.gif',
                                        fit: BoxFit.fill,
                                        semanticLabel: 'No Cover'),
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
                              child: Text(widget.book.volumeInfo.title,
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
                              child: widget.book.volumeInfo.authors != null
                                  ? Text(
                                      'by ${widget.book.volumeInfo.authors.toString().trim().replaceAll('[', '').replaceAll(']', '')}',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey.withOpacity(0.70)),
                                    )
                                  : Text(
                                      'Unkown Author',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey.withOpacity(0.70),
                                      ),
                                    ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: 160,
                              child: Text(
                                widget.book.volumeInfo.publisher!,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.withOpacity(0.70)),
                              ),
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
                              Text(widget.book.volumeInfo.averageRating != null
                                  ? widget.book.volumeInfo.averageRating
                                      .toString()
                                  : '0'),
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
                              Text(widget.book.volumeInfo.ratingsCount != null
                                  ? widget.book.volumeInfo.ratingsCount
                                      .toString()
                                  : '0'),
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
                          Text(widget.book.volumeInfo.printType!),
                        ]),
                        SizedBox(
                          child: Text('|',
                              style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.grey.withOpacity(0.50))),
                        ),
                        Column(
                          children:  <Widget>[
                            // ignore: prefer_if_elements_to_conditional_expressions
                            widget.book.volumeInfo.pageCount != null
                                ? Text(
                                    widget.book.volumeInfo.pageCount.toString())
                                :  const Text('-'),
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
                              fontWeight: FontWeight.bold),
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
                          child: widget.book.volumeInfo.description != null
                              ? Text(
                                  widget.book.volumeInfo.description!,
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
                              label: Text(
                                  widget.book.volumeInfo.categories.first,
                                  style: const TextStyle(fontSize: 14)))),
                    ],
                  )
                ]),
          )),
    );
  }

  Future<void> addToFavourites() async {
    final firestoreInstance = FirebaseFirestore.instance;
    var currentUser = FirebaseAuth.instance.currentUser;
    final bookDocument = firestoreInstance
        .collection('users')
        .doc(currentUser!.uid)
        .collection('books')
        .doc();

    bookDocument.set({
      //.add({
      'bookId': bookDocument.id,
      'title': widget.book.volumeInfo.title,
      'authors': widget.book.volumeInfo.authors,
      'publisher': widget.book.volumeInfo.publisher,
      'averageRating': widget.book.volumeInfo.averageRating,
      'categories': widget.book.volumeInfo.categories,
      'description': widget.book.volumeInfo.description,
      'pageCount': widget.book.volumeInfo.pageCount,
      'printType': widget.book.volumeInfo.printType,
      'ratingsCount': widget.book.volumeInfo.ratingsCount,
      'imageLinks': widget.book.volumeInfo.imageLinks!.smallThumbnail,
    }).then((_) {});
  }
}
