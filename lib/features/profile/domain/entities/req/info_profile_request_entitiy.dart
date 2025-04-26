class InfoProfileRequestEntitiy {
  String userName;
  String emailAdrees;
  String phoneNumber;
  String shippingAddrees;
  InfoProfileRequestEntitiy(
      {this.userName = "",
      this.emailAdrees = "",
      this.phoneNumber = "",
      this.shippingAddrees = ""});

  Map<String, dynamic> toJson() => {
        "userNamer": userName,
        "emailAdrees": emailAdrees,
        "PhoneNumber": phoneNumber,
        "shippingAddrees": shippingAddrees,
      };
}
