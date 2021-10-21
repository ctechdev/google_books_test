import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_books_test/app/favourites/fav_book_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavouritesPage extends HookConsumerWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final firestoreInstance = FirebaseFirestore.instance;
    var currentUser = FirebaseAuth.instance.currentUser;

    final Stream<QuerySnapshot> _booksStream = firestoreInstance
        .collection('users')
        .doc(currentUser!.uid)
        .collection('books')
        .snapshots();

    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          const Positioned(
              top: 30,
              left: 20,
              child: SizedBox(
                  width: 260,
                  child: Text('Your favourite Books',
                      style: TextStyle(
                        //color: Color(0xffC4C6CC),
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Brutal',
                      ),
                      maxLines: 2))),
          Positioned(
              top: 80,
              left: 20,
              right: 20,
              bottom: 4,
              child: StreamBuilder<QuerySnapshot>(
                stream: _booksStream,
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Text("Loading");
                  }

                  return ListView(
                    children:
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                      Map<String, dynamic> data =
                          document.data()! as Map<String, dynamic>;
                      return FavBookItem(data: data);
                    }).toList(),
                  );
                },
              )),
        ],
      )),
    );
  }
}
