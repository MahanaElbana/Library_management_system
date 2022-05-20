import 'package:postgres/postgres.dart';

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


readAllUsers()async{
  
  if(!connection.isClosed){
    var results = await connection.query("SELECT * FROM person");
    print(results);
  }else{
    print("connection is disable try again ");
  }
  


}

insertUsers()async{
  
  if(!connection.isClosed){
    String data = "INSERT INTO person(fullname ,nationalNumber,phoneNumber,userType) "+
    " VALUES('youssef','74125898961456','01220771294','student')";
    var results = await connection.query("${data}");
    print(results);
  }else{
    print("connection is disable try again ");
  }
  


}