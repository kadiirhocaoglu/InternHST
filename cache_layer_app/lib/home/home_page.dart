import 'package:cache_layer_app/home/cache/shared_manager.dart';
import 'package:cache_layer_app/home/cache/user.dart';
import 'package:cache_layer_app/home/cache/user_list_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends IsLoadingAbstract<HomePage> {
  @override
  void initState() {
    super.initState();
    _sharedManager = SharedManager();
    initialize();
    _userItems = UserItems().users;
  }
  void initialize() async{
    changeLoading();
    await _sharedManager.init(); 
    isTitleEmpty();
    changeLoading();
  }
  void isTitleEmpty(){
    setState(()  {
    _currentValue =  _sharedManager.getString('counter') ?? "";  
    });
    
  }

  late final SharedManager _sharedManager;
  String _currentValue = "";
  late final List<User> _userItems;
    

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_currentValue)),
      body: UserListView()/*Column(
        children: [
          FloatingActionButton(onPressed: (){
            _sharedManager.saveString('counter', 'se');
            changeLoading();
            //_currentValue = _sharedManager.getString('counter') ?? "falso";
            changeLoading();
          },),
          UserListView()
        ],
      ),*/
    );
  }
}

abstract class IsLoadingAbstract<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
