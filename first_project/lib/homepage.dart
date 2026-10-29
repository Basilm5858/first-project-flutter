import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
              top: Radius.circular(30),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => {},
          ),
          title: Text(
            'First Flutter App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(icon: const Icon(Icons.search), onPressed: () => {}),
            IconButton(icon: const Icon(Icons.more_vert), onPressed: () => {}),
          ],
        ),

        body: Column(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          backgroundColor: Colors.blueAccent,
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
