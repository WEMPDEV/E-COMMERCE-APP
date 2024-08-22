import 'package:flutter/material.dart';
import 'package:g_gizmo/models/product_widgets.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    required this.index,
    required this.name,
  });

  final int index;
  final String name;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int isSelected = 0;

  void changeScreen(int index) {
    setState(() {
      isSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: EdgeInsets.all(0),
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: const Color(0xFF25364A).withOpacity(0.8),
          iconTheme: const IconThemeData(
            color: Colors.white,
            size: 20,
          ),
          title: const Text(
            "Hi Emmanuel",
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          leading: Image.asset("assets/logos/G logo.jpg", scale: 20,),
          actions: [
            Padding(
              padding: EdgeInsets.all(8),
              child:
               CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade200,
                                  radius: 11,
                                  child: const Icon(
                                    Icons.notifications,
                                    size: 20,
                                    color: Color(0xFF25364A),
                                  ),
                                ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 900,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/profile');
                          },
                          icon: const Icon(Icons.grid_view),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 290,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.blueGrey),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    size: 20,
                                    color: Color(0xFF25364A),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color:  Color(0xFF25364A)
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 180,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              left: -30,
                              right: -30,
                              child: SizedBox(
                                height: 180,
                                child: PageView.builder(
                                  controller: PageController(viewportFraction: 0.8),
                                  itemCount: 3,
                                  itemBuilder: (_, i) {
                                    final images = [
                                      "assets/images/products/Camera.jpeg",
                                      "assets/images/products/Earpod Pro.jpeg",
                                      "assets/images/products/Washing Machine.jpeg",
                                    ];
                                    return Container(
                                      height: 180,
                                      width: MediaQuery.of(context).size.width,
                                      margin: const EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image: DecorationImage(
                                          image: AssetImage(images[i]),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      builProductCategory(
                        index: 0,
                        name: 'All Products',
                        isSelected: isSelected == 0,
                        onTap: () => changeScreen(0),
                      ),
                      builProductCategory(
                        index: 1,
                        name: 'Games',
                        isSelected: isSelected == 1,
                        onTap: () => changeScreen(1),
                      ),
                      builProductCategory(
                        index: 2,
                        name: 'Appliances',
                        isSelected: isSelected == 2,
                        onTap: () => changeScreen(2),
                      ),
                    ],
                  ),
                  Flexible(
                    child: isSelected == 0
                        ? buildAllProduts()
                        : isSelected == 1
                        ? buildGames()
                        : buildApplainces(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class builProductCategory extends StatelessWidget {
  const builProductCategory({
    super.key,
    required this.index,
    required this.name,
    required this.isSelected,
    required this.onTap,
  });

  final int index;
  final String name;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 40,
        margin: const EdgeInsets.only(top: 10, right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF25364A) : Colors.blueGrey.shade300,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class Product {
  final int id;
  final String name;
  final String category;
  final String image;
  final String description;
  final double price;
  int quantity;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.description,
    required this.price,
    required this.quantity,
  });
}