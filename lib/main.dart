import 'package:envoice/item.dart';
import 'package:envoice/itemdetail.dart';
import 'package:envoice/pdf.dart';
import 'package:envoice/preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      routes: {
        '/' :(context) => item(),
         '/itemdetail' :(context) => itemdetail(),
         '/preview' :(context) => preview(),
         '/pdf' :(context) => pdf(),

      },
    );
  }
}

