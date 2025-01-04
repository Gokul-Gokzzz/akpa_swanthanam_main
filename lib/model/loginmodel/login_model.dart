// import 'dart:convert';

// class LoginModel {
//   String? id;
//   String? districtId;
//   String? meghalaId;
//   String? unitId;
//   String? districtName;
//   String? meghalaName;
//   String? unitName;
//   String? name;
//   String? username;
//   String? password;
//   String? nomineeName;
//   String? akpaId;
//   String? mobile;
//   String? upiId;
//   String? image;
//   DateTime? dateOfBirth;
//   String? age;
//   String? joinYear;
//   String? lastRenewedDate;
//   String? accountAmount;
//   String? balanceAmount;
//   String? lastDeathId;
//   String? previousDeathId;
//   DateTime? dateOfDeath;
//   String? chequeNumber;
//   DateTime? creditedDate;
//   String? creditedAmount;
//   String? helpImage;
//   String? creditedStatus;
//   String? status;
//   String? deathStatus;
//   DateTime? createdAt;
//   DateTime? updatedAt;
//   String? rememberToken;
//   String? cmFirebaseToken;
//   String? deviceToken;
//   String? temporaryToken;
//   List<dynamic>? translations;

//   LoginModel({
//     this.id,
//     this.districtId,
//     this.meghalaId,
//     this.unitId,
//     this.districtName,
//     this.meghalaName,
//     this.unitName,
//     this.name,
//     this.username,
//     this.password,
//     this.nomineeName,
//     this.akpaId,
//     this.mobile,
//     this.upiId,
//     this.image,
//     this.dateOfBirth,
//     this.age,
//     this.joinYear,
//     this.lastRenewedDate,
//     this.accountAmount,
//     this.balanceAmount,
//     this.lastDeathId,
//     this.previousDeathId,
//     this.dateOfDeath,
//     this.chequeNumber,
//     this.creditedDate,
//     this.creditedAmount,
//     this.helpImage,
//     this.creditedStatus,
//     this.status,
//     this.deathStatus,
//     this.createdAt,
//     this.updatedAt,
//     this.rememberToken,
//     this.cmFirebaseToken,
//     this.deviceToken,
//     this.temporaryToken,
//     this.translations,
//   });

//   LoginModel copyWith({
//     String? id,
//     String? districtId,
//     String? meghalaId,
//     String? unitId,
//     String? districtName,
//     String? meghalaName,
//     String? unitName,
//     String? name,
//     String? username,
//     String? password,
//     String? nomineeName,
//     String? akpaId,
//     String? mobile,
//     String? upiId,
//     String? image,
//     DateTime? dateOfBirth,
//     String? age,
//     String? joinYear,
//     String? lastRenewedDate,
//     String? accountAmount,
//     String? balanceAmount,
//     String? lastDeathId,
//     String? previousDeathId,
//     DateTime? dateOfDeath,
//     String? chequeNumber,
//     DateTime? creditedDate,
//     String? creditedAmount,
//     String? helpImage,
//     String? creditedStatus,
//     String? status,
//     String? deathStatus,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     String? rememberToken,
//     String? cmFirebaseToken,
//     String? deviceToken,
//     String? temporaryToken,
//     List<dynamic>? translations,
//   }) =>
//       LoginModel(
//         id: id ?? this.id,
//         districtId: districtId ?? this.districtId,
//         meghalaId: meghalaId ?? this.meghalaId,
//         unitId: unitId ?? this.unitId,
//         districtName: districtName ?? this.districtName,
//         meghalaName: meghalaName ?? this.meghalaName,
//         unitName: unitName ?? this.unitName,
//         name: name ?? this.name,
//         username: username ?? this.username,
//         password: password ?? this.password,
//         nomineeName: nomineeName ?? this.nomineeName,
//         akpaId: akpaId ?? this.akpaId,
//         mobile: mobile ?? this.mobile,
//         upiId: upiId ?? this.upiId,
//         image: image ?? this.image,
//         dateOfBirth: dateOfBirth ?? this.dateOfBirth,
//         age: age ?? this.age,
//         joinYear: joinYear ?? this.joinYear,
//         lastRenewedDate: lastRenewedDate ?? this.lastRenewedDate,
//         accountAmount: accountAmount ?? this.accountAmount,
//         balanceAmount: balanceAmount ?? this.balanceAmount,
//         lastDeathId: lastDeathId ?? this.lastDeathId,
//         previousDeathId: previousDeathId ?? this.previousDeathId,
//         dateOfDeath: dateOfDeath ?? this.dateOfDeath,
//         chequeNumber: chequeNumber ?? this.chequeNumber,
//         creditedDate: creditedDate ?? this.creditedDate,
//         creditedAmount: creditedAmount ?? this.creditedAmount,
//         helpImage: helpImage ?? this.helpImage,
//         creditedStatus: creditedStatus ?? this.creditedStatus,
//         status: status ?? this.status,
//         deathStatus: deathStatus ?? this.deathStatus,
//         createdAt: createdAt ?? this.createdAt,
//         updatedAt: updatedAt ?? this.updatedAt,
//         rememberToken: rememberToken ?? this.rememberToken,
//         cmFirebaseToken: cmFirebaseToken ?? this.cmFirebaseToken,
//         deviceToken: deviceToken ?? this.deviceToken,
//         temporaryToken: temporaryToken ?? this.temporaryToken,
//         translations: translations ?? this.translations,
//       );

//   factory LoginModel.fromJson(String str) => LoginModel.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory LoginModel.fromMap(Map<String, dynamic> json) => LoginModel(
//     id: json["id"].toString(),
//     districtId: json["district_id"].toString(),
//     meghalaId: json["meghala_id"].toString(),
//     unitId: json["unit_id"].toString(),
//     districtName: json["district_name"].toString(),
//     meghalaName: json["meghala_name"].toString(),
//     unitName: json["unit_name"].toString(),
//     name: json["name"].toString(),
//     username: json["username"].toString(),
//     password: json["password"].toString(),
//     nomineeName: json["nominee_name"].toString(),
//     akpaId: json["akpa_id"].toString(),
//     mobile: json["mobile"].toString(),
//     upiId: json["upi_id"].toString(),
//     image: json["image"].toString(),
//     dateOfBirth: json["date_of_birth"] == null ? null : DateTime.parse(json["date_of_birth"]),
//     age: json["age"].toString(),
//     joinYear: json["join_year"].toString(),
//     lastRenewedDate: json["last_renewed_date"].toString(),
//     accountAmount: json["account_amount"].toString(),
//     balanceAmount: json["balance_amount"].toString(),
//     lastDeathId: json["last_death_id"].toString(),
//     previousDeathId: json["previous_death_id"].toString(),
//     dateOfDeath: json["date_of_death"] == null ? null : DateTime.parse(json["date_of_death"]),
//     chequeNumber: json["cheque_number"].toString(),
//     creditedDate: json["credited_date"] == null ? null : DateTime.parse(json["credited_date"]),
//     creditedAmount: json["credited_amount"].toString(),
//     helpImage: json["help_image"].toString(),
//     creditedStatus: json["credited_status"].toString(),
//     status: json["status"].toString(),
//     deathStatus: json["death_status"].toString(),
//     createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
//     updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
//     rememberToken: json["remember_token"].toString(),
//     cmFirebaseToken: json["cm_firebase_token"].toString(),
//     deviceToken: json["device_token"].toString(),
//     temporaryToken: json["temporary_token"].toString(),
//     translations: json["translations"] == null ? [] : List<dynamic>.from(json["translations"]!.map((x) => x)),
//   );

//   Map<String, dynamic> toMap() => {
//     "id": id,
//     "district_id": districtId,
//     "meghala_id": meghalaId,
//     "unit_id": unitId,
//     "district_name": districtName,
//     "meghala_name": meghalaName,
//     "unit_name": unitName,
//     "name": name,
//     "username": username,
//     "password": password,
//     "nominee_name": nomineeName,
//     "akpa_id": akpaId,
//     "mobile": mobile,
//     "upi_id": upiId,
//     "image": image,
//     "date_of_birth": "${dateOfBirth!.year.toString().padLeft(4, '0')}-${dateOfBirth!.month.toString().padLeft(2, '0')}-${dateOfBirth!.day.toString().padLeft(2, '0')}",
//     "age": age,
//     "join_year": joinYear,
//     "last_renewed_date": lastRenewedDate,
//     "account_amount": accountAmount,
//     "balance_amount": balanceAmount,
//     "last_death_id": lastDeathId,
//     "previous_death_id": previousDeathId,
//     "date_of_death": dateOfDeath?.toIso8601String(),
//     "cheque_number": chequeNumber,
//     "credited_date": creditedDate?.toIso8601String(),
//     "credited_amount": creditedAmount,
//     "help_image": helpImage,
//     "credited_status": creditedStatus,
//     "status": status,
//     "death_status": deathStatus,
//     "created_at": createdAt?.toIso8601String(),
//     "updated_at": updatedAt?.toIso8601String(),
//     "remember_token": rememberToken,
//     "cm_firebase_token": cmFirebaseToken,
//     "device_token": deviceToken,
//     "temporary_token": temporaryToken,
//     "translations": translations == null ? [] : List<dynamic>.from(translations!.map((x) => x)),
//   };
// }

// ignore_for_file: non_constant_identifier_names

class LoginResponse {
  final String? phone;
  final String? password;
  final String? lastRenewedYear;
  final String? pk_int_act_members_id;
  final String? vchr_member_name;
  final String? vchr_member_photo;
  final String? vchr_govt_vlfare_no;
  final String? date_dob;
  final String? vchr_email_id;
  final String? vchr_phone;
  final String? vchr_whatsapp_number;
  final String? vchr_emergency_contact_number;
  final String? vchr_address;
  final String? vchr_pin;
  final String? vchr_nominee_name;
  final String? vchr_relation;
  final String? vchr_facebook_link;
  final String? vchr_insta;
  final String? vchr_gender;
  final String? vchr_adhar_number;
  final String? vchr_mobile;
  final String? vchr_district_name;
  final String? vchr_sector_name;
  final String? vchr_unit_name;
  final String? vchr_blood_name;
  final String? vchr_designation;
  final String? vchr_institution_name;
  final String? vchr_professtion;

  LoginResponse({
    this.phone,
    this.password,
    this.lastRenewedYear,
    this.pk_int_act_members_id,
    this.vchr_member_name,
    this.vchr_member_photo,
    this.vchr_govt_vlfare_no,
    this.date_dob,
    this.vchr_email_id,
    this.vchr_phone,
    this.vchr_whatsapp_number,
    this.vchr_emergency_contact_number,
    this.vchr_address,
    this.vchr_pin,
    this.vchr_nominee_name,
    this.vchr_relation,
    this.vchr_facebook_link,
    this.vchr_insta,
    this.vchr_gender,
    this.vchr_adhar_number,
    this.vchr_mobile,
    this.vchr_district_name,
    this.vchr_sector_name,
    this.vchr_unit_name,
    this.vchr_blood_name,
    this.vchr_designation,
    this.vchr_institution_name,
    this.vchr_professtion,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      phone: json['phone'] ?? '',
      password: json['password'] ?? '',
      lastRenewedYear: json['LAST_RENEWED_YEAR'],
      pk_int_act_members_id: json['pk_int_act_members_id'] ?? '',
      vchr_member_name: json['vchr_member_name'] ?? '',
      vchr_member_photo: json['vchr_member_photo'] ?? '',
      vchr_govt_vlfare_no: json['vchr_govt_vlfare_no'] ?? '',
      date_dob: json['date_dob'] ?? '',
      vchr_email_id: json['vchr_email_id'] ?? '',
      vchr_phone: json['vchr_phone'] ?? '',
      vchr_whatsapp_number: json['vchr_whatsapp_number'] ?? '',
      vchr_emergency_contact_number:
          json['vchr_emergency_contact_number'] ?? '',
      vchr_address: json['vchr_address'] ?? '',
      vchr_pin: json['vchr_pin'] ?? '',
      vchr_nominee_name: json['vchr_nominee_name'] ?? '',
      vchr_relation: json['vchr_relation'],
      vchr_facebook_link: json['vchr_facebook_link'] ?? '',
      vchr_insta: json['vchr_insta'] ?? '',
      vchr_gender: json['vchr_gender'] ?? '',
      vchr_adhar_number: json['vchr_adhar_number'] ?? '',
      vchr_mobile: json['vchr_mobile'] ?? '',
      vchr_district_name: json['vchr_district_name'] ?? '',
      vchr_sector_name: json['vchr_sector_name'] ?? '',
      vchr_unit_name: json['vchr_unit_name'] ?? '',
      vchr_blood_name: json['vchr_blood_name'] ?? '',
      vchr_designation: json['vchr_designation'] ?? '',
      vchr_institution_name: json['vchr_institution_name'] ?? '',
      vchr_professtion: json['vchr_professtion'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'password': password,
      'LAST_RENEWED_YEAR': lastRenewedYear,
      'pk_int_act_members_id': pk_int_act_members_id,
      'vchr_member_name': vchr_member_name,
      'vchr_member_photo': vchr_member_photo,
      'vchr_govt_vlfare_no': vchr_govt_vlfare_no,
      'date_dob': date_dob,
      'vchr_email_id': vchr_email_id,
      'vchr_phone': vchr_phone,
      'vchr_whatsapp_number': vchr_whatsapp_number,
      'vchr_emergency_contact_number': vchr_emergency_contact_number,
      'vchr_address': vchr_address,
      'vchr_pin': vchr_pin,
      'vchr_nominee_name': vchr_nominee_name,
      'vchr_relation': vchr_relation,
      'vchr_facebook_link': vchr_facebook_link,
      'vchr_insta': vchr_insta,
      'vchr_gender': vchr_gender,
         'vchr_adhar_number': vchr_adhar_number,
      'vchr_mobile': vchr_mobile,
      'vchr_district_name': vchr_district_name,
      'vchr_sector_name': vchr_sector_name,
      'vchr_unit_name': vchr_unit_name,
       'vchr_blood_name': vchr_blood_name,
      'vchr_designation': vchr_designation,
      'vchr_institution_name': vchr_institution_name,
      'vchr_professtion': vchr_professtion,
    };
  }
}
