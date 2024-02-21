import 'package:flutter/material.dart';
import 'package:qrcode_scanner/generate_qr_code.dart';
import 'package:qrcode_scanner/scan_qr_code.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Scanner & Generator',
      debugShowCheckedModeBanner: false,
      
      home: HomePage());
   
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Qr Code Generator & Scanner", style: TextStyle(color: Colors.white),),
      backgroundColor: Color.fromARGB(255, 56, 0, 88),),
      body: Center(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScanQRCode()));
            });
          }, child: Text("Scan QR Code"),
          ),

          SizedBox(height: 40,),

          ElevatedButton(onPressed: (){
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => GenerateQRCode()));
            });
          }, child: Text("Generate QR Code")),
        ],

      )),
    );
  }
}