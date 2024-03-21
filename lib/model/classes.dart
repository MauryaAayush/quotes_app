import 'package:quotes/utils/Quoteslist.dart';

class Model_Quotes
{
  String? quotes;
  String? authors;
  List<Model_Quotes>? list = [];


  Model_Quotes({this.quotes ,this.authors,this.list});

  factory Model_Quotes.fromQuotes(Map quotesmap)
  {
    return Model_Quotes(
        quotes: quotesmap['quote'],
        authors: quotesmap['author']
    );
  }


  void tryy()
  {
    list = allquotes.map((e) => Model_Quotes.fromQuotes(e)).toList();
  }
}