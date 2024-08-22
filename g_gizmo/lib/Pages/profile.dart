import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: 15,),
            SizedBox(
              height: 1200,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.blueGrey.shade800,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Account',style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                              ),),
                              Row(
                                children: [
                                    IconButton(onPressed: (){}, icon: const Icon(Icons.search,color:  Color(0xFF25364A),)),
                                  IconButton(onPressed: (){
                                    Navigator.pushNamed(context, '/cart');
                                  }, icon:const Icon(Icons.shopping_cart,color:  Color(0xFF25364A),))
                                ],
                              )
                            ],
                          ),
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/logos/G logo.jpg'),
                          ),
                          const SizedBox(height: 10,),
                          const Text('Welcome Emmanuel!',style:
                            TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w400,
                              fontSize: 20
                            ),),
                          const Text('Emmanuel@gmail.com',style:
                          TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w300,
                              fontSize: 20
                          ),),
                        ],
                      ),
                    ),
                  ),
                  const ListTile(
                      title: Text(
                        'MY GIZMO ACCOUNT',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      tileColor: Colors.white54
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(child:
                    ListTile(
                        title: const Text(
                          'Orders',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        leading: const Icon(Icons.pending_actions),
                        trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                        tileColor: Colors.grey,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(child:
                    ListTile(
                        title: const Text(
                          'Inbox',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        leading: const Icon(Icons.mail_outline_sharp),
                        trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                        tileColor:  Colors.grey,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(child:
                    ListTile(
                        title: const Text(
                          'Ratings & Reviews',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        leading: const Icon(Icons.rate_review_outlined),
                        trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                        tileColor:  Colors.grey,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(child:
                    ListTile(
                        title: const Text(
                          'Vouchers',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        leading: const Icon(Icons.payments_outlined),
                        trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                        tileColor:  Colors.grey,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(child:
                    ListTile(
                        title: const Text(
                          'Saved Items',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        leading: const Icon(Icons.favorite_border_outlined),
                        trailing: IconButton(onPressed: (){
                          Navigator.pushNamed(context, '/saved');
                        },icon: const Icon(Icons.navigate_next_sharp),),
                        tileColor:  Colors.grey,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(child:
                    ListTile(
                        title: const Text(
                          'Follow Seller',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        leading: const Icon(Icons.sell_outlined),
                        trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                        tileColor:  Colors.grey,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(child:
                    ListTile(
                        title: const Text(
                          'Recently Viewed',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        leading: const Icon(Icons.access_time_outlined),
                        trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                        tileColor:  Colors.grey,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(child:
                    ListTile(
                        title: const Text(
                          'Recently Searched',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        leading: const Icon(Icons.search_off_outlined),
                        trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                        tileColor: Colors.grey,
                    ),
                    ),
                  ),
                  const ListTile(
                      title: Text(
                        'MY SETTINGS',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      tileColor:  Colors.white54,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(child:
                    ListTile(
                        title: const Text(
                          'Address Book',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                        tileColor:  Colors.grey,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(child:
                    ListTile(
                        title: const Text(
                          'Account Management',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                        tileColor:  Colors.grey,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(child:
                    ListTile(
                        title: const Text(
                          'Close Account',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                        tileColor:  Colors.grey,
                    ),
                    ),
                  ),
                  ListTile(
                      title: TextButton(onPressed: (){
                        Navigator.pushNamed(context, '/logout');
                      }, child: const Text(
                        'LOG OUT',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      )),
                      tileColor:  Colors.grey,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
