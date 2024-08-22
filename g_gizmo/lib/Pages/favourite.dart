import 'package:g_gizmo/Pages/favourite_provider.dart';
import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    final provider = FavouriteSaved.of(context);
    final finaList = provider.favourites;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20),
            child: Row(
              children: [
                const Text('Favourites',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 27,color:  Color(0xFF25364A)
                ),),
                const SizedBox(width: 200,),
                IconButton(onPressed: (){
                  Navigator.pushNamed(context, '/cart');
                }, icon: const Icon(Icons.shopping_cart,color:Color(0xFF25364A) ,)),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Expanded(child:
          ListView.builder(
            itemCount: finaList.length,
              itemBuilder: (context, index){
              return Padding(padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  finaList[index].name,
                  style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  finaList[index].description,
                  overflow: TextOverflow.ellipsis,
                ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage(finaList[index].image),
                ),
                trailing: Text("\$${finaList[index].price}",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
              ),);
              })
          ),
        ],
      ),
    );
  }
}
