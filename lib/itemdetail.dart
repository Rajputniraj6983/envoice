import 'package:flutter/material.dart';

class itemdetail extends StatefulWidget {
  const itemdetail({super.key});

  @override
  State<itemdetail> createState() => _itemdetailState();
}
TextEditingController txtproduct=TextEditingController();
TextEditingController txtprice=TextEditingController();
TextEditingController txtquantity=TextEditingController();
TextEditingController txtgst=TextEditingController();


class _itemdetailState extends State<itemdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text('Item Detail',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15,left: 15),
            child: TextField(
              controller: txtproduct,
              decoration: InputDecoration(
              hintText: 'Product Name',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
            ),),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 15,left: 15),
            child: TextField(
              controller: txtprice,
              decoration: InputDecoration(
                hintText: 'Price',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
            ),),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 15,left: 15),
            child: TextField(
              controller: txtquantity,
              decoration: InputDecoration(
                hintText: 'Quantity',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
            ),),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 15,left: 15),
            child: TextField(
              controller: txtgst,
              decoration: InputDecoration(
                hintText: 'Gst',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
            ),),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Container(height: 50,width: 200,
            child: Text('total=${total} ',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/preview');
              price=double.parse(txtprice.text);
              product=txtproduct.text;
              quantity=double.parse(txtquantity.text);
              gst=double.parse(txtgst.text);
              price=(price*quantity);
              gst=(price*gst/100);
              total=price+gst;
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text('ADD',
               style: TextStyle(color: Colors.black,
                fontSize: 30,fontWeight: FontWeight.bold),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
double price=0;
double quantity=0;
double gst=0;
String product = '';
double total=0;