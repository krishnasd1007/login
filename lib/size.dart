import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SizeConfig{
  static double  width;
  static double height;
  static double blockHorizontal;
  static double blockVertical;
  static double widthmul;
  static double htmul;

  void init(BoxConstraints constraints, Orientation orientation){
    if (orientation == Orientation.portrait){
      width = constraints.maxWidth;
      height = constraints.maxHeight;
    } else{
      width = constraints.maxHeight;
      height = constraints.maxWidth;
    }
    blockHorizontal = width/100;
    blockVertical = height/100;
    widthmul = blockHorizontal;
    htmul = blockVertical;
  }
}