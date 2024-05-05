import 'package:flutter/material.dart';
import 'package:test/screen/grid_view_screen.dart';
class ButtonScreen extends StatefulWidget {
  final String ? name;

  const ButtonScreen( {required this.name,Key? key}) : super(key: key);

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}


class _ButtonScreenState extends State<ButtonScreen> {
  bool _isClicked=false;
    int count=0;
  Color _buttonColor=Colors.red;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:(){
      setState(() {
        _isClicked=true;
        if(_isClicked){
           _buttonColor=Colors.green;
            count=count+1;
        }
      });
    }, child: Text("${widget.name}"),style: ElevatedButton.styleFrom(backgroundColor: _buttonColor),);
  }
}
