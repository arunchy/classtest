import 'package:flutter/material.dart';
import 'package:test/screen/grid_view_screen.dart';


class SplashScreen extends StatefulWidget {

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final String name="Arun";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>GridViewScreen()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text("Splash Screen"),
        ) ,
        body: Center(
          child: Text("Welcome ${name}",style: TextStyle(fontSize: 26,color: Colors.red),),
        )
    );
  }
}
