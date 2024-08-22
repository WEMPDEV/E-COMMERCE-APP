
import 'package:flutter/material.dart';
import 'package:g_gizmo/Pages/pickquotes.dart';
class Quote extends StatefulWidget {
  const Quote({super.key});

  @override
  State<Quote> createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  List<Qoute> quotes = [
    Qoute(author: 'Oscar wild', text: 'Be your self and dont panic.'),
    Qoute(author: 'Oscar wild', text: 'Be your self and dont panic.'),
    Qoute(author: 'Oscar wild', text: 'Be your self and dont panic.'),

  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10.0, 16.0, 16.0, 0.0,),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[400],
              ),),
            const SizedBox(height: 6.0,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[800],
              ),
            ),
           const SizedBox(height: 8.0,),
            ElevatedButton.icon(onPressed: () {},
                icon: const Icon(Icons.delete),
                label: const Text(
                  'Delete quote'
                ),
            ),
          ],),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quotes Don'
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // children: quotes.map((quote) {
        //   return Text((quote);
        //   }).toList(),
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
