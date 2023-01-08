import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarCodeScan extends StatefulWidget {
  const BarCodeScan({Key? key}) : super(key: key);

  @override
  State<BarCodeScan> createState() => _BarCodeScanState();
}

class _BarCodeScanState extends State<BarCodeScan> {
  var getResult = 'Barcode resultat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barcode Scanner'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              scanBarcode();
            },
            child: Text('Scan barcode'),
          ),
          SizedBox(height: 20),
          Text(getResult),
        ],
      )),
    );
  }

  void scanBarcode() async {
    try {
      final barCode = await FlutterBarcodeScanner.scanBarcode(
          '#000000', 'Annuller', true, ScanMode.BARCODE);

      if (!mounted)
        return setState(() {
          getResult = barCode;
        });
      print('Barcode_result:--');
      print(barCode);
    } on PlatformException {
      getResult = 'Fejlede til at scanne barcode.';
    }
  }
}
