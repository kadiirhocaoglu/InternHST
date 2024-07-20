final class CustomValidator{
  
  final String? value;

  CustomValidator({required this.value});

  String? get emptyCheck{
    if (value == null || value!.isEmpty){
      return "Please enter some text";
    }
    return null; 
  }
}