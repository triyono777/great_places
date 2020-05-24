import 'package:flutter/material.dart';
import 'package:great_places/providers/great_places.dart';
import 'package:great_places/screens/add_place_screen.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your places'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Consumer<GreatPlaces>(
        child: Center(
          child: const Text('Got ni place yet'),
        ),
        builder: (ctx, greatPlace, ch) => greatPlace.items.length <= 0
            ? ch
            : ListView.builder(
                itemCount: greatPlace.items.length,
                itemBuilder: (ctx, i) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: FileImage(greatPlace.items[i].image),
                  ),
                  title: Text(greatPlace.items[i].title),
                  onTap: () {
                    //go to detail page
                  },
                ),
              ),
      ),
    );
  }
}
