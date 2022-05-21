import 'constants/colors.dart';
import 'controller/databaseConnect.dart';
import 'view/managerPersentaionLayer.dart';

void main() async {
  try {
    await openConnection();
    
  } catch (e) {
    print("${Colors.Red}connection is interrupted , try again !${Colors.Red}");
  }
  if(!connection.isClosed){
    ManagerPersentaionLayer.MainLibrary();
    // print(connection.isClosed);
  }
  //print("object");
}
