import 'package:flutter/material.dart';



class MyPopUpMenuItem <T> extends PopupMenuItem<T>
{
  final Widget child;
  final Function function;
  MyPopUpMenuItem({@required this.child,@required this.function}) : super(child:child);


  @override
  PopupMenuItemState<T, PopupMenuItem<T>> createState() {
    return MyPopUpMenuItemState();
  }
}

class MyPopUpMenuItemState<T,PopUpMenuItem> extends PopupMenuItemState<T,MyPopUpMenuItem<T>>
{


  @override
  void handleTap() {
    widget.function();

  }
}
