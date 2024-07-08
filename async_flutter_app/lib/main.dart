import 'dart:async';
import 'dart:developer';

void main() async {
 int num = 12;
  print("Senkron çalış");

  try {
    num = await asyncFunc();
  } catch (error) {
    print(error);
  } finally {
    print("ne olursa olsun yine çalış");
  }

  

  try {
    Map<String, dynamic> users = await getUsers();
    print(users);
    int userId = await getUserId(users, "kadirhoca");
    print(userId);
  } 
  catch (error){
    print(error);
  }
  finally{
    print("Hadi geçmiş olsun");
  }

}



Future<Map<String, dynamic>> getUsers() {
  return Future.delayed(Duration(seconds: 3), () {
    return {'kadirhoca': 12345, 'hakanhoca': 67890};
  });
}

Future<int> getUserId(Map<String, dynamic> map, String username) {
  return Future.delayed(Duration(seconds: 3), () {
    if (map.containsKey(username)) {
      return map[username];
    } else {
      throw Exception("User not found");
    }
  });

  Future(() {
    // uzun sürecek işlem
  });
}





  
 

/*
class Person {
  String name;
  int age;
  String email;

  Person({required this.name, required this.age, required this.email});
}

Future<Person> getPerson() {
  return Future.delayed(Duration(seconds: 2), () {
    return Person(name: "kadir", age: 12, email: "hello@example.com");
  });
}

Future<int> asyncFunc() {
  return Future.delayed(Duration(seconds: 5), () {
    // return 20;
    throw Exception("hata alındı");
  });
}
*/