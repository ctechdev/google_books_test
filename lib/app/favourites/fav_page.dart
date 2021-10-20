import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavouritesPage extends HookConsumerWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {

    return SafeArea(
      child: Scaffold(
          body: Stack(
            children: const <Widget>[
              Positioned(
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

              // Positioned(
              //   top:185,
              //   left: 20,
              //   right:20,
              //   bottom: 4,
              //   child: Text('Favs')),
            ],
          )),
    );
  }
}
