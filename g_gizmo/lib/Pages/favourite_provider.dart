import 'package:flutter/material.dart';
import 'home.dart';
import 'package:provider/provider.dart';
class FavouriteSaved extends ChangeNotifier{
  final List<Product> _favourites =[];
  List<Product> get favourites => _favourites;

  void toggleFavourite(Product product){
    if(_favourites.contains(product)){
      _favourites.remove(product);
    } else{
      _favourites.add(product);
    }
    notifyListeners();
  }

  bool isExist(Product product){
    final isExist = _favourites.contains(product);
    return isExist;
  }
  static FavouriteSaved of(
      BuildContext context,{
        bool listen = true,
  }) {
    return Provider.of<FavouriteSaved>(
      context,
      listen: listen,
    );
  }

}


