import 'package:flutter/material.dart';

class MoviesListScreen extends StatefulWidget {
  static const name = "/movies-list-screen";
  const MoviesListScreen({super.key});

  @override
  State<MoviesListScreen> createState() => _MoviesListScreenState();
}

class _MoviesListScreenState extends State<MoviesListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Discover"),
      ),
      body: Column(
        children: [
          Text("Discover", style: TextTheme.of(context).titleLarge,)
        ],
      ),
    );
  }
}
