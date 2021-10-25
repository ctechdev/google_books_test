import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FavBookItem extends StatelessWidget {
  final Map<String, dynamic> data;
  const FavBookItem({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 5,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: data['imageLinks'] != 'null'
                  ? SizedBox(
                      height: 180,
                      width: 120,
                      child: Image.network(
                        data['imageLinks'].toString(),
                        fit: BoxFit.fill,
                      ),
                    )
                  : SizedBox(
                      height: 180,
                      width: 120,
                      child: Image.asset('assets/no_cover.gif',
                          fit: BoxFit.fill, semanticLabel: 'No Cover'),
                    ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: SizedBox(
                    width: 180,
                    child: data['authors'] != null
                        ? Text(
                            'by ${data['authors'][0]}',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.withOpacity(0.70)),
                          )
                        : Text(
                            'by Nd',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.withOpacity(0.70)),
                          ),
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: 190,
                  child: data['title'] != null
                      ? Text(data['title'] as String,
                          maxLines: 2,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))
                      : const Text('Nd',
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 6),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.yellow[600]),
                    const SizedBox(width: 4),
                    Text(data['averageRating'].toString()),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 24.0),
                      child: IconButton(
                        icon: Icon(Icons.delete_outline),
                        onPressed: () => removeFromFavourites(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> removeFromFavourites() async {
    
    final firestoreInstance = FirebaseFirestore.instance;
    var currentUser = FirebaseAuth.instance.currentUser;

    final bookDocument = firestoreInstance
        .collection('users')
        .doc(currentUser!.uid)
        .collection('books').doc(data['bookId'] as String );
    
    return bookDocument.delete();
  }
}
