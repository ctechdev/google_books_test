import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Dashboard extends HookConsumerWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {

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
          body: Stack(
            children: const <Widget>[
              
            ],
          )),
    );
  }
}
