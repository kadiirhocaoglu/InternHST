import 'package:flutter/material.dart';

class SharedManagerException implements Exception{
  @override
  String toString() {
    return 'Shared manager has not initialized';
  }

}