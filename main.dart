import'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}
/*stateless---
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "my app",
      home: new Scaffold(
        appBar:new AppBar(
          title: new Text("flutter page"),

        ),
        body: new Center(child: new Text("heiii hii"),),
      ),
    );
  }
}*/
//material app is necessary so we need stateless for this one ,"_" means private
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
    title: "my app",
    home: new Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}







class _HomepageState extends State<Homepage> {

  String mytext=("helii ITER");
  void _changetext(){
    setState(() {
      if(mytext.startsWith("h")) {
        mytext = ("welcome to iter");
      }else{
        mytext="helli world";
      }
    });

  }

  Widget _bodywidget(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          children:<Widget> [
            new Text(mytext),
            new ElevatedButton(onPressed:_changetext,
                child: new Text("click") )
          ],
        ),
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("hey using statefull"),
      ),
      body: _bodywidget()
    );
  }
}


