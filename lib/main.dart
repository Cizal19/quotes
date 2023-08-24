import 'package:flutter/material.dart';

import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: "Mae West",
        text: "You only live once, but if you do it right, once is enough."),
    Quote(
        author: "Albert Einstein",
        text:
            "If you want to live a happy life, tie it to a goal, not to people or things."),
    Quote(
        author: " Celine Dion",
        text:
            "Life imposes things on you that you can’t control, but you still have the choice of how you’re going to live through this")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text(
            "Awesome Quotes",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes
              .map((quote) => Text("${quote.text} - ${quote.author}"))
              .toList(),
        ));
  }
}
