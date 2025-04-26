class PaymentCardRequestEntity {
  String userName;
  String cardNumber;
  String expirationDate;
  String secureCode;

  PaymentCardRequestEntity({
    this.userName = "",
    this.cardNumber = "",
    this.expirationDate = "",
    this.secureCode = "",
  });
  //? IF Endpoint For Payment
  Map<String, dynamic> toJson() => {
        "userName": userName,
        "cardNumber": cardNumber,
        "expirationDate": expirationDate,
        "secureCode": secureCode,
      };
}
