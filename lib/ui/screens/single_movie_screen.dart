import 'package:flutter/material.dart';

class SingleMovieScreen extends StatefulWidget {
  static const String name = "/SingleMovieScreen";
  const SingleMovieScreen({super.key});

  @override
  State<SingleMovieScreen> createState() => _SingleMovieScreenState();
}

class _SingleMovieScreenState extends State<SingleMovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
