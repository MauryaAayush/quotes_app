import 'package:flutter/material.dart';
import 'package:quotes/model/classes.dart';
import 'package:quotes/utils/Quoteslist.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    Model_Quotes m1 = Model_Quotes();
    m1.tryy();

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.black,
              title: Text(m1.list![0].authors!,
                style: TextStyle(color: Colors.white),
              ),
              content: Text(m1.list![0].quotes!,
                style: TextStyle(color: Colors.white,fontSize: 17),

              ),
              actions: [
                TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              'Your text is copies in the favorite lits')));
                      Navigator.of(context).pop();
                    },
                    child: Text('Save')),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancel'))
              ],
            ),
          );
        },
        child: Icon(Icons.lightbulb),
      ),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        title: const Text(
          'Quotes',
          style: TextStyle(color: Colors.teal, fontSize: 25),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.black
                // image: DecorationImage(
                //   image: AssetImage('assets/images/download.jpeg'), // Replace 'assets/background_image.jpg' with your image path
                //   fit: BoxFit.cover,
                // ),
                ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 30),
                ...List.generate(
                  allquotes.length,
                  (index) => Container(
                    margin: EdgeInsets.symmetric(
                        vertical: height * 0.02, horizontal: width * 0.06),
                    // height: height * 0.3,
                    // width: width * 0.75,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        // color: Colors.teal.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(width * 0.02),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.teal,
                              spreadRadius: 2,
                              blurRadius: 20,
                              offset: Offset(2, 2))
                        ]),
                    child: ListTile(
                      title: Text(
                        m1.list![index].quotes!,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        ' ~ ${Model_Quotes.fromQuotes(allquotes[index]).authors!}',
                        style: TextStyle(color: Colors.teal, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
