import 'package:flutter/material.dart';

class Model_Quotes
{
  String? Quotes;
  String? Authors;

  Model_Quotes({this.Quotes ,this.Authors});

  factory Model_Quotes.fromQuotes(Map Quotesmap)
  {
    return Model_Quotes(
        Quotes: Quotesmap['quote'],
        Authors: Quotesmap['quote']
    );
  }
}