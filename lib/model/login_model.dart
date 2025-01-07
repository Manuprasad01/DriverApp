class Login {
  final String id;
  final String username;
  final String password;


  Login(
      {required this.id,
      required this.username,
      required this.password,
  });

  factory Login.fromMap(Map<String, dynamic> data, String documentId) {
    return Login(
        id: documentId,
  
        username: data['username'] ?? '',
        password: data['password'] ?? '',
 );
  }
}
