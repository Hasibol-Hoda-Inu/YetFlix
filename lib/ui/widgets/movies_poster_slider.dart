import 'package:flutter/material.dart';

class MoviesPosterSlider extends StatelessWidget {
  const MoviesPosterSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index)=>Container(
          width: 300,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            image: const DecorationImage(image: NetworkImage("https://images.bauerhosting.com/legacy/media/61f3/e8d0/05e8/5530/559b/af43/infinity-war-poster-crop.jpg?ar=16%3A9&fit=crop&crop=top&auto=format&w=1440&q=80",), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(12),
          ),
        ),),
    );
  }
}