import 'controller/databaseConnect.dart';
import 'view/managerPersentaionLayer.dart';

void main() async {
  try {
    await connection.open();
    
  } catch (e) {
    print("connection is interruption , try again ");
  }
   if(!connection.isClosed){
     ManagerPersentaionLayer.MainLibrary();
   }

}
