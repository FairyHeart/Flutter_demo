import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/route_manager.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCodePage extends StatefulWidget {
  @override
  QrCodePageState createState() => new QrCodePageState();
}

class QrCodePageState extends State<QrCodePage> {

  Barcode? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QrCode'),
      ),
      body: Center(
        child: Text(
            result != null ?
            ('Barcode Type: ${describeEnum(
                result?.format ?? '')}   Data: ${result?.code}'):'no'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Path.qrPage);
        },
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }


}
