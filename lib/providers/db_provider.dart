import 'package:flutter/cupertino.dart';
import 'package:untitled/db/db_admin.dart';
import 'package:untitled/models/qr_model.dart';

class DBProvider extends ChangeNotifier{


  List<QRModel> qrList = [];
  int res = 0;
  bool isLoading = false;


  Future<void> getDataProvider() async{
    isLoading = true;
    notifyListeners();
    qrList = await DBAdmin.db.getQRData();
    qrList = qrList.reversed.toList();
    isLoading = false;
    notifyListeners();
  }

  Future<void> addRegister(QRModel  model) async{
    res = await DBAdmin.db.insertQR(model);
    notifyListeners();
    getDataProvider();
  }


}