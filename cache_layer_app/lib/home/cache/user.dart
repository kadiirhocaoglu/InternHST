class User {
  final String name;
  final String surname;
  final String url;
  
  User(this.name, this.surname, this.url);
}

class UserItems{
    List<User> users = [
    User("kadir", "hoca", "kadirhoca.dev"),
    User("kadir", "hoca", "kadirhoca.dev"),
    User("kadir", "hoca", "kadirhoca.dev")
  ];
}