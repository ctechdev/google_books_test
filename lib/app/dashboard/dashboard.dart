import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_books_test/app/books/books_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Dashboard extends HookConsumerWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final textEditingController = useTextEditingController();

    final state = ref.watch(booksNotifierProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Google Books App',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Brutal',
                        ),
                        ),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            
            actions: <Widget>[
              IconButton(
                color: Colors.black,
                icon: const Icon(Icons.logout),
                onPressed: () {
                  Navigator.pop(context);
                })
            ],
          ),
          body: Container(
        child: Stack(
          children: const <Widget>[
            

            // Positioned(
            //   top:185,
            //   left: 20,
            //   right:20,
            //   bottom: 4,
            //   child: Text('Favs')),
          ],
        ),
      )),
    );
  }
}
