import 'dart:io';
import '../components/listedPannel.dart';
import '../components/titlePannel.dart';
import '../constants/colors.dart';
import '../controller/databaseConnect.dart';
import 'beneficiaryInterface.dart';

class ManagerPersentaionLayer {
  static bool HomePageState = true;

  ManagerPersentaionLayer() {
    HomePageState = true;
  }
  static void HomePageDecoration() {
    titlePannel("Home Page", Colors.Green, 80);

    pannelItem("^" * 68, Colors.Green);
    pannelItem("Enter [Em -- RR-- St -- Bo -- Lo --[X or x] --Lg -- Bc]",
        Colors.Green);
    pannelItem("Em => Employee panal                                   ",
        Colors.Green);
    pannelItem("RR => REservationReturn panal                          ",
        Colors.Green);
    pannelItem("Bo => Book panal                                       ",
        Colors.Green);
    pannelItem("Lo => Location panal                                   ",
        Colors.Green);
    pannelItem("Be => Benficiary panal                                 ",
        Colors.Green);
    pannelItem("Lg => Log panal                                        ",
        Colors.Green);
    pannelItem("Bc => copies panal                                     ",
        Colors.Green);
    pannelItem("[X or x]  => exit                                      ",
        Colors.Green);
    pannelItem("^" * 68, Colors.Green);
  }

  static void MainLibrary() {
    titlePannel("Library Management System", Colors.Magenta, 100);
    print("\n");
    HomePageDecoration();
    while (HomePageState) {
      var manage =  stdin.readLineSync();
      if (manage == "Em") {
        //await readAllUsers();
      } else if (manage == "Be") {
        BeneficiaryInterface be = new BeneficiaryInterface();
        be.interfaceBeneficiary();
      } else if (manage == "Bo") {
        // await insertUsers();
      } else if (manage == "x") {
        ManagerPersentaionLayer.HomePageState = false;
        print(HomePageState);
        break;
        // LocationInterface lo = new LocationInterface();
        // lo.InterfaceLocation();
      } else if (manage == "Lg") {
        // LogInterface log = new LogInterface();
        // log.InterfaceLog();
      } else if (manage == "Bc") {
        print("hello");
        //  BookCopyInterface BC = new BookCopyInterface();
        //  BC.InterfaceBookCopy();
      } else if (manage == "RR") {
        // ReturnReservationInterface RR = new ReturnReservationInterface();
        // RR.InterfaceReturnReservation();
      } else if (manage == "X" ) {
        HomePageState = false;
      } else {
        print(Colors.Red +
            "Entered data is not correct , choose from list ----!" +
            Colors.Red);
      }
    }
  }
}
