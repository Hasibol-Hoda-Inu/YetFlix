import 'package:flutter/material.dart';
import 'package:yet_flix/ui/screens/single_movie_screen.dart';

import '../widgets/heading_section.dart';
import '../widgets/movies_poster_slider.dart';
import 'movies_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: buildHomeScreenAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search),
                  fillColor: const Color(0xff27272F),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none
                  )
                ),
              ),
              const SizedBox(height: 16,),
              HeadingSection(
                title: 'Upcoming Movies',
                onTap: _onTapMoviesListScreen,
              ),
              const MoviesPosterSlider(),
              const SizedBox(height: 16,),
              HeadingSection(onTap: _onTapMoviesListScreen, title: "New Movies"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _moviesCardSlider(),
                ),
              ),
              const SizedBox(height: 16,),
              HeadingSection(onTap: _onTapMoviesListScreen, title: "Thriller Movies"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _moviesCardSlider(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  List<Widget> _moviesCardSlider(){
    List<Widget> moviesCardList = [];
    for(int i=0; i<7; i++){
       moviesCardList.add(buildMoviesCard(context));
    } return moviesCardList;
  }

  Widget buildMoviesCard(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, SingleMovieScreen.name);
      },
      child: SizedBox(
              width: 200,
              height: 280,
              child: Card(
                color: const Color(0xff27272F),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      child: Image.network("https://static0.srcdn.com/wordpress/wp-content/uploads/2023/03/spider-man-no-way-home-poster.jpg",
                      height: 180,
                      width: 200,
                      fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Movie title here",
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.w700),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Text("Action/Adventure",
                            style: TextStyle(color: Colors.grey),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Row(
                            children: [
                              Icon(Icons.star_rounded, color: Colors.amber,),
                              Text("8.5", style: TextStyle(color: Colors.grey),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
  
  void _onTapMoviesListScreen(){
    Navigator.pushNamed(context, MoviesListScreen.name);
  }
  Row buildHomeScreenAppBar() {
    return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello Enu",
                style: TextStyle(fontWeight: FontWeight.w700),),
              Text("What to watch?",
                style: TextStyle(
                  fontSize: 14
                ),),
            ],
          ),
          CircleAvatar(
            foregroundImage: NetworkImage("https://hudaenu.xyz/wp-content/uploads/2024/07/Group-991.png"),
          )
        ],
      );
  }
}



