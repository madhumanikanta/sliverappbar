//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home_Page(),debugShowCheckedModeBanner: false,);
  }
}
class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(pinned:true,expandedHeight: 200,actions: [Icon(Icons.ice_skating),Icon(Icons.add_a_photo_sharp)],
        shape: Border(bottom: BorderSide.none),leading: Icon(Icons.menu),title: Text('welcome'),
        flexibleSpace: FlexibleSpaceBar(centerTitle:true,title:Text('welcome'),collapseMode: CollapseMode.values[0],background: Image(image: NetworkImage('https://cdn.pixabay.com/photo/2023/10/12/17/56/after-the-rain-8311416_640.jpg'),),),),
      SliverToBoxAdapter(child: Column(children: [SizedBox(height: 1000,),Text('hello')],),)
    ],);
  }
}
