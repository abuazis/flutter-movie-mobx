import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie/mobx/movie.dart';
import 'package:flutter_movie/mobx/movie_list.dart';

import 'package:flutter_movie/views/widgets/selectable_box.dart';
import 'package:provider/provider.dart';

class FormScreen extends StatefulWidget {
  final bool isEdit;
  final Movie? movie;
  
  const FormScreen({ Key? key, this.isEdit = false, this.movie }) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _directorController = TextEditingController();
  final TextEditingController _summaryController = TextEditingController();

  final List<String> _selectedGenres = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<MovieList>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (widget.isEdit) TextButton(
              onPressed: () {
                context.router.navigateBack();
              },
              child: const Text(
                "Hapus",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            const SizedBox(width: 16),
            TextButton(
              onPressed: () {
                list.addMovie(
                  title: _titleController.text, 
                  director: _directorController.text, 
                  summary: _summaryController.text, 
                  genres: _selectedGenres,
                );
                context.router.navigateBack();
              },
              child: const Text(
                "Simpan",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          TextField(
            controller: _titleController,
            onChanged: (query) {},
            decoration: InputDecoration(
              filled: true,
              labelText: "Title",
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 10.0,
              ),
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
          TextField(
            controller: _directorController,
            onChanged: (query) {},
            decoration: InputDecoration(
              filled: true,
              labelText: "Director",
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 10.0,
              ),
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
          TextField(
            controller: _summaryController,
            onChanged: (query) {},
            maxLines: 5,
            textAlignVertical: TextAlignVertical.top,
            maxLength: 100,
            decoration: InputDecoration(
              filled: true,
              labelText: "Summary",
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 10.0,
              ),
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
          Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: [
              SelectableBox(
                "Action",
                isSelected: _selectedGenres.contains("Action"),
                onTap: () => setState(() {
                  _selectedGenres.contains("Action") 
                  ? _selectedGenres.remove("Action") 
                  : _selectedGenres.add("Action");
                }),
              ),
              SelectableBox(
                "Animation",
                isSelected: _selectedGenres.contains("Animation"),
                onTap: () => setState(() {
                  _selectedGenres.contains("Animation") 
                  ? _selectedGenres.remove("Animation") 
                  : _selectedGenres.add("Animation");
                }),
              ),
              SelectableBox(
                "Drama",
                isSelected: _selectedGenres.contains("Drama"),
                onTap: () => setState(() {
                  _selectedGenres.contains("Drama") 
                  ? _selectedGenres.remove("Drama") 
                  : _selectedGenres.add("Drama");
                }),
              ),
              SelectableBox(
                "Horror",
                isSelected: _selectedGenres.contains("Horror"),
                onTap: () => setState(() {
                  _selectedGenres.contains("Horror") 
                  ? _selectedGenres.remove("Horror") 
                  : _selectedGenres.add("Horror");
                }),
              ),
              SelectableBox(
                "Sci-Fi",
                isSelected: _selectedGenres.contains("Sci-Fi"),
                onTap: () => setState(() {
                  _selectedGenres.contains("Sci-Fi") 
                  ? _selectedGenres.remove("Sci-Fi") 
                  : _selectedGenres.add("Sci-Fi");
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}