import '../components/listedPannel.dart';
import '../components/titlePannel.dart';
import '../constants/colors.dart';

import 'dart:io';
class BeneficiaryInterface {
  bool manageState = false;

  BeneficiaryInterface() {
    manageState = true;
  }
  void interfaceBeneficiary() {
    while (manageState) {
      titlePannel("Beneficiary pannel", Colors.Blue, 80);
      pannelItem("^" * 68, Colors.Blue);
      pannelItem("Enter [S -- D -- I --U -- X --TX]", Colors.Blue);
      pannelItem("S  => show  Beneficiary          ", Colors.Blue);
      pannelItem("D  => delete  Beneficiary        ", Colors.Blue);
      pannelItem("I  => Insert Beneficiary         ", Colors.Blue);
      pannelItem("U  => search  Beneficiary        ", Colors.Blue);
      pannelItem("X  => exit from student menu     ", Colors.Blue);
      pannelItem("TX => exit from program          ", Colors.Blue);
      pannelItem("^" * 68, Colors.Blue);

      var manage = stdin.readLineSync();
      if (manage == "S") {
        // BeneficiaryRepo.ReadAllBenefitiary();
      } else if (manage == "D") {
        // BeneficiaryRepo.DeleteDenefitiary();
      } else if (manage == "I") {
        // BeneficiaryRepo.InsertBenefitiary();

      } else if (manage == "U") {
        // BeneficiaryRepo.SearchBenefitiary();
      } else if (manage == "TX") {
        // this.manageState = false;
        // InterfaceManger.HomePageState = false;
      } else if (manage == "X") {
        //InterfaceManger.HomePageDecoration();
        //  this.manageState = false;
      } else {
        // Console.WriteLine("choose from the list !");
      }
    }
  }
}
