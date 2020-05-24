import 'dart:io';

import 'package:flutter/foundation.dart';
import '../models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];
  List<Place> get items {
    return [...items];
  }

  void addPlace(String pickkedTitle, File pickedImage) {
    final newPlace = Place(
      id: DateTime.now().toString(),
      image: pickedImage,
      title: pickkedTitle,
      location: null,
    );
    _items.add(newPlace);
    notifyListeners();
  }
}
