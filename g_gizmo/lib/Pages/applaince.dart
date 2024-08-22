import 'package:flutter/material.dart';

import '../models/product_widgets.dart';

class Applaince extends StatefulWidget {
  const Applaince({super.key});

  @override
  State<Applaince> createState() => _ApplainceState();
}

class _ApplainceState extends State<Applaince> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Center(
                      child:Container(
                        width: 100,
                        height: 40,
                        margin: const EdgeInsets.only(top: 10, right: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFF25364A) ,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'Applainces',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60,),
              buildApplainces()
            ],
          ),
        ),
      ),
    );
  }
}
