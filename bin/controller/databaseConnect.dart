import 'dart:ffi';
import 'dart:io';

import 'package:postgres/postgres.dart';

import '../constants/colors.dart';

// var connection = PostgreSQLConnection("172.17.0.2", 5432, "dart",
//     username: "dart", password: "123456");
//OR
var connection = PostgreSQLConnection("localhost", 5433, "dart",
    username: "dart", password: "123456");

// open connection
openConnection() async {
  await connection.open();
}

// close connection
closeConnection() async {
  await connection.close();
}

readAllUsers() async {
  if (!connection.isClosed) {
    var results = await connection.query("SELECT * FROM person");
    print(results);
  } else {
    print("connection is disable try again ");
  }
}

insertUsers() async {
  if (!connection.isClosed) {
    String? fullname;
    var nationalNumber;
    String? phoneNumber;
    String? userType;
    try {
      stdout.write("Enter your name : ");
      fullname = await stdin.readLineSync();

      //
      if (fullname == null) {
        stdout.write("you should enter your name !");
        throw Exception;
      }
      //

      stdout.write("Enter your national number  : ");
      try {
        nationalNumber = await stdin.readLineSync();
      } catch (e) {
        stdout.write("national number should be number !");
        throw Exception;
      }

      if (nationalNumber == null) {
        stdout.write("you should enter your national Number !");
        throw Exception;
      }
      
      try{
       int dataint = int.parse(nationalNumber);
      }
      catch(e){
        print("national number should be number");
        throw e;
      }

      if ((nationalNumber).length != 14) {
        stdout.write(" national Number should be 14 digits!");
        print("\n"+ "${nationalNumber.toString().length}");
        throw Exception;
      }
      //

      String data = '''
        INSERT INTO person(fullname ,nationalNumber,phoneNumber,userType) 
     VALUES('${fullname}','${nationalNumber}','01220771294','student')
     ''';
      PostgreSQLResult results = await connection.query("${data}");
      print(results);
    } catch (e) {
      print("${Colors.Red}insert new User is not done !${Colors.Green}");
    }
  } else {
    print("connection is disable try again ");
  }
}
