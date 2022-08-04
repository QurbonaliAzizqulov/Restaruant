

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mainprovider extends ChangeNotifier{
  int counter=1;
  void qush(){
    counter++;
    notifyListeners();
  }
  void ayir(){
    counter--;
    notifyListeners();
  }
  int favcount=1;
  void favqush(){
    counter++;
    notifyListeners();
  }
  void favayir(){
    counter--;
    notifyListeners();
  }






  bool _isselekted=false;
  int _isItemindex=0;
  void isItemselekted(value){
    _isselekted=value;
    notifyListeners();
  }
  bool getItemselekted(){
    return _isselekted;
  }
   isItemindex(value){
    _isItemindex=value;
    notifyListeners();
  }
  int getItemindex(){
    return _isItemindex;
  }
void langChanged(){
  notifyListeners();
  }
  setFavorite(int index) async {
    SharedPreferences perfs=await SharedPreferences.getInstance();
    await perfs.setInt("favorite",index);
  }
  Future<int?> getFavorite()async{
    SharedPreferences perfs=await SharedPreferences.getInstance();
    if(perfs.containsKey("favorite")){
      return perfs.getInt("favorite");
    }
  }
  void setFavoritelist(List indexes) async {
    final prefs = await SharedPreferences.getInstance();
    // String mealindex= jsonEncode(tList);
     prefs.setStringList(
       'Literal',
       indexes.map((e) => e.toString()).toList(),);
     notifyListeners();
  }
   Future<List<int>> getSFavoriteList() async {
    final prefs = await SharedPreferences.getInstance();

      List? res=prefs.getStringList("Literal");
      if(res!=null){
        return res.map((e) => int.parse(e)).toList();

      }return List.empty();


    }
}


