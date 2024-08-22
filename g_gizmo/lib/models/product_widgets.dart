import 'package:flutter/material.dart';
import 'package:g_gizmo/Pages/details_screens.dart';
import 'package:g_gizmo/models/product.dart';
import 'package:g_gizmo/models/productCard.dart';

Widget buildAllProduts(){
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          // color: Colors.grey
        ),
        height: 550,
        alignment: Alignment.center,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (100/140),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,),
          scrollDirection: Axis.vertical,
          itemCount: MyProducts.allProducts.length,
          itemBuilder: (context, index){
            final allProducts = MyProducts.allProducts[index];
            return GestureDetector(
              onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
                  DetailsScreens(product: allProducts),
              ),
              ),
                child: Productcard(product: allProducts));
          },
        ),
      ),
    ),
  );
}

Widget buildGames(){
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          // color: Colors.grey
        ),
        height: 550,
        alignment: Alignment.center,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (100/140),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,),
          scrollDirection: Axis.vertical,
          itemCount: MyProducts.games.length,
          itemBuilder: (context, index){
            final games = MyProducts.games[index];
            return GestureDetector(
                onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>
                      DetailsScreens(product: games),
                  ),
                ),
                child: Productcard(product: games));
          },
        ),
      ),
    ),
  );
}

Widget buildApplainces(){
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          // color: Colors.grey
        ),
        height: 550,
        alignment: Alignment.center,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (100/140),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,),
          scrollDirection: Axis.vertical,
          itemCount: MyProducts.applainces.length,
          itemBuilder: (context, index){
            final applainces = MyProducts.applainces[index];
            return GestureDetector(
                onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>
                      DetailsScreens(product: applainces),
                  ),
                ),
                child: Productcard(product: applainces));
          },
        ),
      ),
    ),
  );
}
