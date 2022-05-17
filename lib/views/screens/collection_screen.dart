import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_movie/mobx/movie_list.dart';
import 'package:flutter_movie/utils/app_router.dart';

import 'package:flutter_movie/views/widgets/movie_card.dart';
import 'package:provider/provider.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({ Key? key }) : super(key: key);

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<MovieList>(context);
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Movies Collection"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Search Field
          TextField(
            key: const Key('enterMovieQuery'),
            controller: _searchController,
            textInputAction: TextInputAction.search,
            textAlign: TextAlign.center,
            onChanged: (query) {},
            decoration: InputDecoration(
              filled: true,
              hintText: 'Search by title',
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          // Movies Card
          Observer(
            builder: (_) {
              return Column(
                children: list.movies.map((element) => MovieCard(
                  title: element.title,
                  director: element.director,
                  genres: element.genres,
                  onTap: () => context.router.push(FormScreenRoute(isEdit: true)),
                )).toList()
              );
            }
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.router.push(FormScreenRoute()),
        child: const Icon(Icons.add),
      ),
    );
  }
}