import 'package:flutter/material.dart';
import 'package:test/widgets/buttons.dart';


class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  final List<ButtonScreen> _buttons = [
    ButtonScreen(name: "A"),
    ButtonScreen(name: "R"),
    ButtonScreen(name: "U"),
    ButtonScreen(name: "N"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View Screen"),),
      body: GridView.count(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,children: [
      for(int i=0;i<_buttons.length;i++)...{
       if(count[i]<=1)...{
        _buttons[i]
        }

      }
      ],),
    );
  }
}
