
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: SimpleAnimation(),));
}

class SimpleAnimation extends StatefulWidget {
  const SimpleAnimation({super.key});

  @override
  State<SimpleAnimation> createState() => _SimpleAnimationState();
}

class _SimpleAnimationState extends State<SimpleAnimation> with SingleTickerProviderStateMixin{

  Animation<double>? animation;
  AnimationController? animationController;


  @override
  void initState(){
    animationController=AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation= Tween<double>(begin: 12.0,end: 50.0).
    animate(animationController!)..addListener(() {
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text("Hello All",style: TextStyle(fontSize: animation?.value),),
          ),
          ElevatedButton(onPressed: ()=> zoomIn(), child: Text("Increase Text Size"))
        ],
      ),
    );
  }

  void zoomIn() {
    animationController!.forward();
  }
}
