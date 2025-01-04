// import 'dart:convert';
// import 'dart:developer';
// import 'package:akpa/model/confgmodel/config_model.dart';
// import 'package:akpa/model/deathmodel/death_model.dart';
// import 'package:akpa/model/helpmodel/help_model.dart';
// import 'package:akpa/model/loginmodel/login_model.dart';
// import 'package:akpa/model/transactionmodel/transaction_model.dart';
// import 'package:akpa/model/usermodel/user_model.dart';
// import 'package:akpa/service/store_service.dart';
// import 'package:dio/dio.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class ApiService {
//   final String baseUrl = 'https://akpa.in/Controller_api/';
//   final Dio _dio = Dio();

//   Future<Config> fetchConfig() async {
//     final response =
//         await _dio.get('https://akpa.in/Controller_api/app_config');
//     if (response.statusCode == 200) {
//       return Config.fromJson(response.data);
//     } else {
//       throw Exception('Failed to load config');
//     }
//   }

//   //---login---Service---//
//   Future<LoginResponse?> login(String phone, String password) async {
//     const url = "https://akpa.in/Controller_api/login_api";

//     try {
//       // Enhanced Dio options
//       _dio.options = BaseOptions(
//         connectTimeout: const Duration(milliseconds: 5000),
//         receiveTimeout: const Duration(milliseconds: 5000),
//       );

//       final response = await _dio.post(
//         url,
//         data: {
//           'phone': phone,
//           'password': password,
//         },
//       );

//       if (response.statusCode == 200) {
//         final data = response.data;

//         log('Response data: ${data.toString()}');

//         if (data['status'] == true) {
//           final loginModel = LoginResponse.fromJson(data['data']);

//           // Save member_id to SharedPreferences
//           SharedPreferences prefs = await SharedPreferences.getInstance();
//           if (loginModel.pk_int_act_members_id != null) {
//             await StoreService.setLoginUserId(
//                 loginModel.pk_int_act_members_id!.toString());
//             await prefs.setString('loginModel.pk_int_act_members_id',
//                 loginModel.pk_int_act_members_id!.toString());
//           }

//           return loginModel;
//         } else {
//           log('Login failed with message: ${data['message']}');
//           return null;
//         }
//       } else {
//         log('Login failed with status code: ${response.statusCode}');
//         return null;
//       }
//     } on DioException catch (e) {
//       log('DioException: ${e.type}, ${e.message}');
//       return null;
//     } catch (e) {
//       log('Unexpected error: $e');
//       return null;
//     }
//   }

// Future<void> updateDeviceToken(String username) async {
//   final url = "${baseUrl}user/update_device_token";

//   try {
//     final sharedPreferences = await SharedPreferences.getInstance();
//     final deviceToken = sharedPreferences.getString('deviceToken') ?? '';

//     await _dio.post(
//       url,
//       data: {
//         'username': username,
//         'deviceToken': deviceToken,
//       },
//     );
//   } catch (e) {
//     log('Failed to update device token: $e');
//   }
// }

// Future<void> logout() async {
//   final sharedPreferences = await SharedPreferences.getInstance();

//   await sharedPreferences.remove('phone');
//   await sharedPreferences.remove('password');

//   // final url = "${baseUrl}user/remove_device_token";
//   // final deviceToken = sharedPreferences.getString('deviceToken') ?? '';

//   // try {
//   //   await _dio.post(
//   //     url,
//   //     data: {
//   //       'deviceToken': deviceToken,
//   //     },
//   //   );
//   // } catch (e) {
//   //   log('Failed to remove device token: $e');
//   // }
// }

//---user---view--//

// Future<UserProfile?> getUserView(int memberId) async {
//   try {
//     final response = await _dio.post(
//       'https://lifelinekeralatrust.com/api/v1/user/profile',
//       data: {
//         'member_id': memberId.toString(),
//       },
//     );

//     if (response.statusCode == 200 && response.data['status'] == true) {
//       final userProfile = UserProfile.fromJson(response.data['data']);
//       return userProfile;
//     } else {
//       log('Failed to load profile. Message: ${response.data['message']}');
//       return null;
//     }
//   } catch (e) {
//     log('Error: $e');
//     return null;
//   }
// }

//---- user==profilr---//

// Future<UserProfile> getUserProfile() async {
//   final url = '${baseUrl}profile';
//   try {
//     final pk_int_act_members_id = await StoreService.getLoginUserId();
//     final response = await _dio.post(
//       url,
//       data: {'pk_int_act_members_id': pk_int_act_members_id},
//     );

//     if (response.statusCode == 200) {
//       final data = response.data['data'];
//       return UserProfile.fromJson(data);
//     } else {
//       throw Exception('Failed to fetch user profile');
//     }
//   } catch (e) {
//     log('Failed to fetch user profile with error: $e');
//     throw Exception('Failed to fetch user profile');
//   }
// }

// Future<Config> getConfig() async {
//   const url = 'https://akpa.in/Controller_api/app_config';

//   try {
//     final response = await _dio.get(url);

//     if (response.statusCode == 200) {
//       return Config.fromJson(response.data);
//     } else {
//       throw Exception('Failed to load configuration');
//     }
//   } catch (e) {
//     log('Error fetching config: $e');
//     rethrow;
//   }
// }

//---dashboard--//
// Future<UserProfile?> getDashboard() async {
//   try {
//     final response = await _dio.post(
//       'https://akpa.in/santhwanam/api/v1/user/dashboard',
//     );
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.data);
//       return UserProfile.fromJson(data['member_details']);
//     } else {
//       throw Exception('Failed to load user profile');
//     }
//   } catch (e) {
//     throw Exception('Failed to load user profile: $e');
//   }
// }

// //--transaction---//
// Future<List<Transaction>> getTransactionList() async {
//   const String url = 'https://akpa.in/santhwanam/api/v1/user/transactions';

//   final memberId = await StoreService.getLoginUserId();
//   try {
//     final response = await _dio.post(
//       url,
//       data: {'member_id': memberId},
//       options: Options(
//         headers: {
//           'Accept': 'application/json',
//           'Authorization': 'Bearer YOUR_ACCESS_TOKEN',
//         },
//       ),
//     );

//     if (response.statusCode == 200) {
//       List<dynamic> data = response.data['list']['data'];
//       return data.map((item) => Transaction.fromJson(item)).toList();
//     } else {
//       log('Error: ${response.statusCode}');
//       throw Exception('Failed to load transactions');
//     }
//   } catch (e) {
//     log('Exception: $e');
//     throw Exception('Failed to load transactions: $e');
//   }
// }

//---help--list---//

// Future<HelpModel> getUserList() async {
//   try {
//     final memberId = await StoreService.getLoginUserId();
//     final response = await Dio().post(
//       'https://akpa.in/santhwanam/api/v1/user/help_list',
//       data: {'member_id': memberId},
//       options: Options(
//         headers: {
//           'Accept': 'application/json',
//           'Authorization': 'Bearer YOUR_ACCESS_TOKEN',
//         },
//       ),
//     );
 
//     if (response.statusCode == 200 && response.data != null) {
//       log('response${response.data}');
//       return HelpModel.fromMap(response.data);
//     } else {
//       log('service help');
//       return HelpModel(list: ListClass(data: []));
//     }
//   } catch (e) {
//     log('Error service: $e');
//     throw Exception('Failed to fetch help list');
//   }
// }

// Future<Map<String, dynamic>> fetchUserData(String memberId) async {
//   final response = await _dio.get(
//     'https://lifelinekeralatrust.com/api/v1/user/view',
//     queryParameters: {
//       'member_id': memberId,
//     },
//   );

//   if (response.statusCode == 200) {
//     final data = response.data;
//     print(data);
//     return {
//       "memberDetails": MemberDetails.fromJson(data['member_details']),
//       "familyDetails": (data['family_details'] as List)
//           .map((family) => FamilyDetails.fromJson(family))
//           .toList(),
//       "helpReceived": (data['help_received'] as List)
//           .map((help) => HelpReceived.fromJson(help))
//           .toList(),
//     };
//   } else {
//     throw Exception('Failed to load user data');
//   }
// }

// Future<MemberDetails> fetchMemberDetails(String memberId) async {
//   try {
//     final response = await _dio.post(
//       'https://lifelinekeralatrust.com/api/v1/user/view',
//       options: Options(
//         headers: {
//           'Authorization': 'Bearer YOUR_ACCESS_TOKEN',
//           'Content-Type': 'application/json',
//         },
//       ),
//       data: {
//         'member_id': memberId,
//       },
//     );
//     if (response.statusCode == 200) {
//       log('Response data: ${response.data}');
//       var data = response.data['member_details'];
//       if (data != null) {
//         return MemberDetails.fromJson(data);
//       } else {
//         throw Exception('Member details are missing from the response');
//       }
//     } else {
//       throw Exception('Failed to load member details');
//     }
//   } catch (e) {
//     log('Failed to load member details: $e');
//     rethrow;
//   }
// }

// Future<List<FamilyDetails>> fetchFamilyDetails(String memberId) async {
//   try {
//     final response = await _dio.post(
//       'https://lifelinekeralatrust.com/api/v1/user/view',
//       options: Options(
//         headers: {
//           'Authorization': 'Bearer YOUR_ACCESS_TOKEN',
//           'Content-Type': 'application/json',
//         },
//       ),
//       data: {
//         'member_id': memberId,
//       },
//     );
//     if (response.statusCode == 200) {
//       var familyDetailsData = response.data['family_details'] as List;
//       return familyDetailsData
//           .map((familyDetail) => FamilyDetails.fromJson(familyDetail))
//           .toList();
//     } else {
//       throw Exception('Failed to load family details');
//     }
//   } catch (e) {
//     log('Failed to load family details: $e');
//     rethrow;
//   }
// }

// Future<List<DeathDetail>> fetchDeathDetails() async {
//   try {
//     final memberId = await StoreService.getLoginUserId();
//     final response = await _dio
//         .post('https://akpa.in/santhwanam/api/v1/user/death_list', data: {
//       'member_id': memberId,
//     });

//     if (response.statusCode == 200) {
//       List<dynamic> data = response.data['list']['data'];
//       return data.map((json) => DeathDetail.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load death details');
//     }
//   } catch (e) {
//     throw Exception('Error fetching death details: $e');
//   }
// }
// }

import 'dart:developer';

import 'package:akpa/model/loginmodel/login_model.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://akpa.in',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ));

  Future<LoginResponse?> loginUser(String phone, String password) async {
    try {
      final response = await _dio.post('/Controller_api/login_api', data: {
        'phone': phone,
        'password': password,
      });

      if (response.statusCode == 200) {
        final data = response.data;
        if (data['status'] == true) {
          return LoginResponse.fromJson(data['data']);
        } else {
          throw Exception(data['message'] ?? 'Unknown error occurred');
        }
      } else {
        throw Exception('Failed to login. Status code: ${response.statusCode}');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        log('Dio error response: ${e.response?.data}');
        throw Exception('Failed to login: ${e.response?.data['message']}');
       } else {
        log('Dio error message: ${e.message}');
        throw Exception('Failed to login: ${e.message}');
      }
    } catch (e) {
      log('General error: $e');
      throw Exception('An unexpected error occurred');
    }
  }
}
