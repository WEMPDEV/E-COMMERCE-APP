
import 'package:flutter/material.dart';
class Availablesize extends StatefulWidget {
  final String size;
  const Availablesize({super.key,required this.size});

  @override
  State<Availablesize> createState() => _AvailablesizeState();
}

class _AvailablesizeState extends State<Availablesize> {
  bool isSelected = false;

  List<Availablesize> size =[
    const Availablesize(size: 'PX 1'),
    const Availablesize(size: 'PX 2'),
    const Availablesize(size: 'PX 3'),
    const Availablesize(size: 'PX 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            width: 40,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF25364A):Colors.blueGrey,
              borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.blueGrey),
            ),
            child: const Text("PX 1",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            width: 40,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF25364A):Colors.blueGrey,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.blueGrey),
            ),
            child: const Text("PX 2",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            width: 40,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF25364A):Colors.blueGrey,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.blueGrey),
            ),
            child: const Text("PX 3",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            width: 40,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF25364A):Colors.blueGrey,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.blueGrey),
            ),
            child: const Text("PX 4",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
