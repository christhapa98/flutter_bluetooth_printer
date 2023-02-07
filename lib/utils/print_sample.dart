import 'package:blue_thermal_printer/blue_thermal_printer.dart';

///Test printing
class PrintSample {
  BlueThermalPrinter bluetooth = BlueThermalPrinter.instance;

  sample() async {
    bluetooth.isConnected.then((isConnected) {
      if (isConnected == true) {
        bluetooth.printCustom("Thank You", 1, 1);
        bluetooth.printQRcode("C102", 200, 200, 1);
        bluetooth.paperCut();
      }
    });
  }

  printToken({String tokenNumber}) {
    bluetooth.isConnected.then((value) {
      bluetooth.printCustom(tokenNumber, 55, 5);
      bluetooth.paperCut();
    });
  }
}
