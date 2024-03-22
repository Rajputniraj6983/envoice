import 'package:flutter/material.dart';

class item extends StatefulWidget {
  const item({super.key});

  @override
  State<item> createState() => _itemState();
}

class _itemState extends State<item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      backgroundColor: Colors.grey,
      title: Text('item',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
    ),
      body: Column(
        children: [
           FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/itemdetail');
            },
            child: Icon(Icons.add,size: 35,),
          ),
        ],
      ),
    );
  }
}
