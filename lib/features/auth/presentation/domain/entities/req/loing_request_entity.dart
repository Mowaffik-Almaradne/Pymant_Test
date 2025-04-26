class LoingRequestEntity {
  String emailAddrees;
  String password;
  bool obscureText;

  LoingRequestEntity({
    this.emailAddrees = "",
    this.password = "",
    this.obscureText = false,
  });
  bool get isCheck => obscureText = !obscureText;
//? IF Was find endpoint (Login )
  Map<String, dynamic> toJson() => {
        "emailAddrees": emailAddrees,
        "password": password,
      };
}
