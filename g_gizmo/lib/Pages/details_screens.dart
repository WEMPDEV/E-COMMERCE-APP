import 'package:flutter/material.dart';
import 'package:g_gizmo/Pages/availablesize.dart';
import 'package:g_gizmo/Pages/carr_provider.dart';
import 'package:g_gizmo/Pages/home.dart';
class DetailsScreens extends StatelessWidget {
   final Product product;
   const DetailsScreens({super.key, required this.product});


  @override
  Widget build(BuildContext context) {
    final provider = CarrProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF25364A),
        title: const Text('Details',style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 230,
                height: 230,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueGrey.shade300
                ),
                child: Image.asset(product.image,fit: BoxFit.cover, ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade100,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(product.name.toUpperCase(),
                    style: const TextStyle(fontSize: 26,
                    fontWeight: FontWeight.bold),),
                    Text("\$${ product.price}",style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),),
                  ],
                ),
                const SizedBox(height: 14,),
                Text(product.description,
                  style: const TextStyle(fontSize: 15),
                  textAlign: TextAlign.justify,),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Text('Available Size',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),)
                  ],
                ),
                const SizedBox(height: 8,),
                const Column(
                  children: [
                    Row(
                      children: [
                        Availablesize(size: ''),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Available Color',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),)
                  ],
                ),
                const SizedBox(height: 5,),
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.green,
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.amber,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomSheet: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          alignment: Alignment.bottomCenter,
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 10,
          decoration: const BoxDecoration(
            color: Color(0xFF25364A),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              topLeft: Radius.circular(8),
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$${ product.price}",style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white
              ),),
              ElevatedButton.icon(onPressed: (){
                provider.toggleProduct(product);
                Navigator.pushNamed(context, '/cart');
              },
                icon: const Icon(Icons.send,color: Colors.red,), label:const Text('Add to Cart',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                 style:  ElevatedButton.styleFrom(
                   backgroundColor: Colors.blueGrey.shade200,
                   shadowColor: Colors.transparent,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(16.0),
                   ), ),),
            ],
          ),
        ),
      ),
    );
  }
}

