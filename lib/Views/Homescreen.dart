import 'package:flutter/material.dart';
import 'package:quotes/model/classes.dart';
import 'package:quotes/utils/Quoteslist.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {

    Model_Quotes model_quotes = Model_Quotes.fromQuotes(allquotes[0]);

    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text('Quotes',style: TextStyle(
        color: Colors.white
      ),),),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(allquotes.length, (index) => ListTile(
            title: Text(model_quotes.Quotes!),
              // subtitle: Text(model_quotes.authors!),
        ),

               )

        ),
      ),
    );
  }
}


class Model_Quotes
{
  String? Quotes;
  String? Authors;

  Model_Quotes({this.Quotes ,this.Authors});

  factory Model_Quotes.fromQuotes(Map Quotes)
  {
    return Model_Quotes(
        Quotes: Quotes['quote'],
        Authors: Quotes['author']

        // : Quotes['author']
    );
  }
}