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

    Model_Quotes m1 =Model_Quotes();
    m1.tryy();

    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text('Quotes',style: TextStyle(
        color: Colors.white
      ),),),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(allquotes.length, (index) => ListTile(
            title: Text(m1.list![index].authors!),
            // title: Text(Model_Quotes.fromQuotes(allquotes[index]).quotes!),
              subtitle: Text(Model_Quotes.fromQuotes(allquotes[index]).quotes!),
        ),

               )

        ),
      ),
    );
  }
}

