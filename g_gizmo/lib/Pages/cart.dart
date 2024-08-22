import 'package:flutter/material.dart';
import 'package:g_gizmo/Pages/carr_provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {

  @override
  Widget build(BuildContext context) {
    final provider = CarrProvider.of(context);
    final finalList = provider.cart;


    builProductQuantity(IconData icon, int index){
      return GestureDetector(
        onTap: (){
          setState(() {
            icon == Icons.add
                ? provider.incrementQuantity(index)
                : provider.decrementQuantity(index);
          });
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blueGrey.shade200,
          ),
          child: Icon(
            icon,
            size: 15,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('My Cart',style:
          TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,color:  Color(0xFF25364A)
          ),),
        centerTitle: true,
        actions: [
        Padding(padding: const EdgeInsets.only(right: 10),
        child: IconButton(onPressed: () { 
          Navigator.pushNamed(context, '/navbar');
        }, icon: const Icon(Icons.grid_view),),),
        ],
      ),
      body: Container(
        height: 720,
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Flexible(child:
            ListView.builder(
              itemCount: finalList.length, // Specify the correct length
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(
                      finalList[index].name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "\$${finalList[index].price}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: AssetImage(finalList[index].image),
                    ),
                    trailing: Column(
                      children: [
                        builProductQuantity(Icons.add, index),
                        Text(
                          finalList[index].quantity.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        builProductQuantity(Icons.remove, index),
                      ],
                    ),
                    tileColor: Colors.grey.shade600,
                  ),
                );
              },
            )
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              width: double.infinity,
              height: 55,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$${provider.getTotalPrice()}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),),
                  ElevatedButton.icon(onPressed: (){},
                      icon: const Icon(Icons.send),label: const Text('Check Out',
                    style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold),),
                    style:  ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey.shade200,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
          ), ),)
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
