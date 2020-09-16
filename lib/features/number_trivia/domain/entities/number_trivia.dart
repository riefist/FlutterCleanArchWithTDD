import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class NumberTrivia extends Equatable {
  String text;
  int number;

  NumberTrivia({@required this.text, @required this.number}) : super([text, number]);

}
