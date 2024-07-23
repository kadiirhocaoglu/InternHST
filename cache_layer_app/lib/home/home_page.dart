import 'package:cache_layer_app/home/cache/shared_manager.dart';
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
  }

  late final SharedManager _sharedManager;
  String _currentValue = "";

  void initialize(){
    changeLoading();
    _sharedManager.init();
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_currentValue)),
      body: FloatingActionButton(onPressed: (){
        _sharedManager.saveString('counter', 'merhaba');
        changeLoading();
        _currentValue = _sharedManager.getString('counter') ?? "falso";
        changeLoading();
      },),
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
