import 'package:flutter/material.dart';
import 'package:g_gizmo/Pages/favourite_provider.dart';
import 'package:g_gizmo/Pages/home.dart';

class Productcard extends StatefulWidget {
  final Product product;
  const Productcard({super.key,
    required this.product,
  });

  @override
  State<Productcard> createState() => _ProductcardState();
}

class _ProductcardState extends State<Productcard> {
  @override
  Widget build(BuildContext context) {
    final provider = FavouriteSaved.of(context);
    return Container(
      width: MediaQuery.of(context).size.width/2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blueGrey.withOpacity(0.2),
      ),
      child: Column(
        children: [
          const SizedBox(height: 2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () => provider.toggleFavourite(widget.product),
                  child: Icon(provider.isExist(widget.product) ?
                  Icons.favorite:Icons.favorite_border_outlined,
                  color: Colors.red,),
                ),
              )
            ],
          ),
          SizedBox(
            height: 150,
            width: 150,
            child: Image.asset(widget.product.image,
            fit: BoxFit.cover,),
          ),
          Text(
            widget.product.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xFF25364A),
            ),
          ),
          Text(
            widget.product.category,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.redAccent,
            ),
          ),
          Text("\$${widget.product.price}",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),),
        ],
      ),
    );
  }
}

class GamesCard extends StatefulWidget {
  final Product games;
  const GamesCard({super.key,
    required this.games,
  });

  @override
  State<GamesCard> createState() => _GamesCardState();
}

class _GamesCardState extends State<GamesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blueGrey.withOpacity(0.2),
      ),
      child: Column(
        children: [
          const SizedBox(height: 2,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.favorite_border_outlined,
                  color: Colors.red,),
              )
            ],
          ),
          SizedBox(
            height: 150,
            width: 150,
            child: Image.asset(widget.games.image,
              fit: BoxFit.cover,),
          ),
          Text(
            widget.games.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xFF25364A),
            ),
          ),
          Text(
            widget.games.category,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.redAccent,
            ),
          ),
          Text("\$${widget.games.price}",
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),),
        ],
      ),
    );
  }
}

class ApplaiancesCard extends StatefulWidget {
  final Product applainces;
  const ApplaiancesCard({super.key,
    required this.applainces
  });

  @override
  State<ApplaiancesCard> createState() => _ApplaiancesCardState();
}

class _ApplaiancesCardState extends State<ApplaiancesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blueGrey.withOpacity(0.2),
      ),
      child: Column(
        children: [
          const SizedBox(height: 2,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.favorite_border_outlined,
                  color: Colors.red,),
              )
            ],
          ),
          SizedBox(
            height: 150,
            width: 150,
            child: Image.asset(widget.applainces.image,
              fit: BoxFit.cover,),
          ),
          Text(
            widget.applainces.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xFF25364A),
            ),
          ),
          Text(
            widget.applainces.category,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.redAccent,
            ),
          ),
          Text("\$${widget.applainces.price}",
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),),
        ],
      ),
    );
  }
}
