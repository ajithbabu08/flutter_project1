import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Refactoring3(),));
}

class Refactoring3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Refactoring 3"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context,index){
        return MyRefractoringWidget(
            bgcolor: Colors.black,
            rimage: Image.asset("assets/images/yellowbackgroundapp.jpg"),
        label: Text("hello",style: GoogleFonts.rubik(fontSize: 30,fontWeight: FontWeight.bold),),);
          }),
    );
  }
}

class MyRefractoringWidget extends StatelessWidget{
  final Color? bgcolor;
  final Image? rimage;
  VoidCallback? onClick;
  Widget? label;
  Widget? ricon;

  MyRefractoringWidget({
    this.bgcolor,
    required this.rimage,
    this.label,
    this.onClick,
    this.ricon
});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Center(
        child: ListTile(
          title: label,
          leading: rimage,
          onTap: onClick,
          trailing: ricon,
        ),
      ),
    );
  }

}
