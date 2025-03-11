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
          Text("Discover", style: TextTheme.of(context).titleLarge,),
          ListTile(
            leading: ClipOval(child: Image.network("https://static0.srcdn.com/wordpress/wp-content/uploads/2023/03/spider-man-no-way-home-poster.jpg"),),
            title: Text("Movie Name"),
            subtitle: Text("Movie Details"),

          ),
        ],
      ),
    );
  }
}
