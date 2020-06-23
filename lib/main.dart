import 'package:flutter/material.dart';
import 'quote.dart';
import 'qoute_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(
      text: 'The greatest glory in living lies not in never falling, but in rising every time we fall' ,
      author: 'Nelson Mandela'
    ), Quote(
      text:  'Life is what happens when you\'re busy making other plans.',
      author: 'John Lennon'
    ), Quote(
      text: "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success.",
      author: 'James Cameron'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awsome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body:Column(
        children: quotes.map((quote) =>  QuoteCard(
            quote :quote,
            delete : () {
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}
