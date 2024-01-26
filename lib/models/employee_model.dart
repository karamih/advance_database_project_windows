class EmployeeModel {
  EmployeeModel({
      this.aFirstName, 
      this.aLastName, 
      this.aAge, 
      this.aGender, 
      this.aPhoneNo, 
      this.aPassword,});

  EmployeeModel.fromJson(dynamic json) {
    aFirstName = json['A_firstName'];
    aLastName = json['A_lastName'];
    aAge = json['A_age'];
    aGender = json['A_gender'];
    aPhoneNo = json['A_phoneNo'];
    aPassword = json['A_password'];
  }
  String? aFirstName;
  String? aLastName;
  int? aAge;
  String? aGender;
  String? aPhoneNo;
  String? aPassword;
}