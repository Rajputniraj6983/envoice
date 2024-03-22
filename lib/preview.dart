import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'itemdetail.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pd;

class preview extends StatefulWidget {
  const preview({super.key});

  @override
  State<preview> createState() => _previewState();
}

class _previewState extends State<preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text('preview',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
      ),
      body: Column(
            children: [
              Container(height: 180,width: 390,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Jagdamba sabji bhandar',style: TextStyle(color: Colors.black,fontSize: 20,),),
                   Text('c-123,124,\nSardar market,\nKadodara highway Road,\n394500',style: TextStyle(color: Colors.black,fontSize: 20),),
                   Text('+91 982548606',style: TextStyle(color: Colors.black,fontSize: 20),)
                 ],
               ),
              ),
              Table(
                children: [
                  TableRow(
                    decoration: BoxDecoration(border: Border.all(width: 2)),
                    children: [
                      Text(' Product',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                      Text(' price',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                      Text(' Quantity',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                      Text(' Gst',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                      Text(' Total amount',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                    ]
                  ),
                  TableRow(
                      children: [
                        Text('${product}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                        Text('${price}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                        Text('${quantity}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                        Text('${gst}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                        Text('${total }',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                      ]
                  ),
                ],
              ),SizedBox(height: 100),
              Divider(thickness: 3,color: Colors.black,),
              SizedBox(height: 10),
              Table(
                children: [
                  TableRow(
                      children: [
                        Text('Price=${price}\n',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                        Text('Gst=${gst}\n',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                        Text('Total=${total}',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
                      ]
                  )
                ],
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(right: 210),
                child: Column(
                  children: [
                    Text("Terms & conditions",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('(1).bika hua maal return nhi liya jayega',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('(2).ravivare dukan band resae',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('(3). Payment 7 din k aandar dena hoga',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),

                  ],
                ),

              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton
                  (
                   onPressed: () async {
                     final pdf = pd.Document();

                     pdf.addPage(pd.Page(
                         pageFormat: PdfPageFormat.a4,
                         build: (pd.Context context) {
                           return pd.Center(
                             child: pd.Column(
                             children: [
                               pd.Container(height: 180,width: 390,
                                 child: pd.Column(
                                   crossAxisAlignment: pd.CrossAxisAlignment.start,
                                   children: [
                                     pd.Text('Jagdamba sabji bhandar',style: pd.TextStyle(color: PdfColors.white,fontSize: 20,),),
                                     pd.Text('c-123,124,\nSardar market,\nKadodara highway Road,\n394500',style: pd.TextStyle(color: PdfColors.black,fontSize: 20),),
                                     pd.Text('+91 982548606',style: pd.TextStyle(color: PdfColors.black,fontSize: 20),)
                                   ],
                                 ),
                               ),
                               pd.Table(
                                 children: [
                                   pd.TableRow(
                                       decoration: pd.BoxDecoration(border: pd.Border.all(width: 2)),
                                       children: [
                                         pd.Text(' Product',style: pd.TextStyle(color: PdfColors.black,fontSize: 15,fontWeight: pd.FontWeight.bold),),
                                         pd.Text(' price',style: pd.TextStyle(color: PdfColors.black,fontSize: 15,fontWeight: pd.FontWeight.bold),),
                                         pd.Text(' Quantity',style: pd.TextStyle(color: PdfColors.black,fontSize: 15,fontWeight: pd.FontWeight.bold),),
                                         pd. Text(' Gst',style: pd.TextStyle(color: PdfColors.black,fontSize: 15,fontWeight: pd.FontWeight.bold),),
                                         pd.Text(' Total amount',style: pd.TextStyle(color: PdfColors.black,fontSize: 15,fontWeight: pd.FontWeight.bold),),
                                       ]
                                   ),
                                   pd.TableRow(
                                       children: [
                                         pd. Text('${product}',style: pd.TextStyle(color: PdfColors.black,fontWeight: pd.FontWeight.bold,fontSize: 15),),
                                         pd.Text('${price}',style: pd.TextStyle(color: PdfColors.black,fontWeight: pd.FontWeight.bold,fontSize: 15),),
                                         pd. Text('${quantity}',style: pd.TextStyle(color: PdfColors.black,fontWeight: pd.FontWeight.bold,fontSize: 15),),
                                         pd.Text('${gst}',style: pd.TextStyle(color: PdfColors.black,fontWeight: pd.FontWeight.bold,fontSize: 15),),
                                         pd.Text('${total }',style: pd.TextStyle(color: PdfColors.black,fontWeight: pd.FontWeight.bold,fontSize: 15),),
                                       ]
                                   ),
                                 ],
                               ),
                               pd.SizedBox(height: 100),
                               pd.Divider(thickness: 3,color: PdfColors.black,),
                               pd.SizedBox(height: 10),
                               pd.Table(
                                 children: [
                                   pd. TableRow(
                                       children: [
                                         pd.Text('Price=${price}\n',style: pd.TextStyle(color: PdfColors.black,fontSize: 15,fontWeight: pd.FontWeight.bold),),
                                         pd. Text('Gst=${gst}\n',style: pd.TextStyle(color: PdfColors.black,fontSize: 15,fontWeight: pd.FontWeight.bold),),
                                         pd.Text('Total=${total}',style: pd.TextStyle(color: PdfColors.black,fontSize: 15,fontWeight: pd.FontWeight.bold),)
                                       ]
                                   )
                                 ],
                               ),
                               pd.SizedBox(height: 50),
                               pd.Padding(
                                 padding:  pd.EdgeInsets.only(right: 210),
                                 child: pd.Column(
                                   children: [
                                     pd.Text("Terms & conditions",style: pd.TextStyle(color: PdfColors.black,fontSize: 18,fontWeight: pd.FontWeight.bold),),
                                     pd. Text('(1).bika hua maal return nhi liya jayega',style: pd.TextStyle(color: PdfColors.black,fontSize: 18,fontWeight: pd.FontWeight.bold),),
                                     pd.Text('(2).ravivare dukan band resae',style: pd.TextStyle(color: PdfColors.black,fontSize: 18,fontWeight: pd.FontWeight.bold),),
                                     pd.Text('(3). Payment 7 din k aandar dena hoga',style: pd.TextStyle(color: PdfColors.black,fontSize: 18,fontWeight: pd.FontWeight.bold),),

                                   ],
                                 ),

                               ),


                             ],
                           ),

                           ); // Center
                         }),
                     ); // P
                     await Printing.layoutPdf(
                         onLayout: (PdfPageFormat format) async => pdf.save());// age
                   },
                    icon: Icon(Icons.picture_as_pdf,size: 40,color: Colors.blue,)),
              ),
            ],
      ),
    );
  }
}



