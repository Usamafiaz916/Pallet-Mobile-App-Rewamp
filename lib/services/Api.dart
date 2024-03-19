// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class API {
//   final baseUrl = "https://prominentpallets.com/api/";

//   Future<dynamic> login_user(String username, String password) async {
//     try {
//       final response = await http.post(
//         Uri.parse(baseUrl + "login"),
//         headers: {
//           "Accept": "application/json",
//           "Content-Type": "application/json",
//         },
//         body: jsonEncode({
//           "email": username,
//           "password": password,
//         }),
//       );
//       final res = jsonDecode(response.body);

//       if (res['message'] != null) {
//         return res['message'];
//       } else if (res['success'] == false) {
//         return res['success'];
//       } else {
//         final default_jobsite = {"id": 0, "name": "none"};
//         await saveData("user", jsonEncode(res['user']));
//         await saveData("active_jobsite", jsonEncode(default_jobsite));
//         await saveData("current_jobsite", jsonEncode(default_jobsite));
//         await saveData("view_jobsite", jsonEncode(default_jobsite));
//         await saveData("history_jobsite", jsonEncode(default_jobsite));
//         await saveData("history", jsonEncode(res['max_history'] != null ? int.parse(res['max_history']['value']) : 10));
//         await saveData("api_token", res['token']);
//         await _updateExpireTimestamp(res);
//         return false;
//       }
//     } catch (error) {
//       print(error);
//     }
//   }

//   Future<dynamic> logout_user() async {
//     try {
//       final response = await http.get(
//         Uri.parse(baseUrl + "logout?token=" + await getData("api_token")),
//         headers: {
//           "Accept": "application/json",
//           "Content-Type": "application/json",
//           "Authorization": "Bearer " + await getData("api_token"),
//         },
//       );
//       final res = jsonDecode(response.body);
//       if (res['success'] == false) {
//         return res['success'];
//       } else {
//         return res['message'];
//       }
//     } catch (error) {
//       print(error);
//     }
//   }

//   Future<dynamic> get_user(String user_id) async {
//     print('get_user $user_id');
//     try {
//       final response = await http.get(
//         Uri.parse(baseUrl + "user/" + user_id),
//         headers: {
//           "Accept": "application/json",
//           "Content-Type": "application/json",
//           "Authorization": "Bearer " + await getData("api_token"),
//         },
//       );
//       final res = jsonDecode(response.body);
//       if (res['success'] == false) {
//         return res['success'];
//       } else if (res['message'] != null && isTokenErrorMessage(res['message'])) {
//         print("token is expired: ${res['message']}");
//         deleteData("api_token");
//         return "logged_out";
//       } else if (res['data'] != null && res['data']['logout_user'] == true) {
//         print("forced logout");
//         return "logged_out";
//       } else if (res['data'] != null) {
//         final default_jobsite = {"id": 0, "name": "none"};
//         await saveData("user", jsonEncode(res['data']));
//         await saveData("active_jobsite", jsonEncode(res['jobsite'] != null ? res['jobsite'] : default_jobsite));
//         await saveData("history", jsonEncode(res['max_history'] != null ? int.parse(res['max_history']['value']) : 10));
//         await saveData("admin_phone", jsonEncode(res['admin_phone'] != null ? res['admin_phone']['value'] : "212-924-1515"));
//         await _updateExpireTimestamp(res);
//         return true;
//       } else {
//         return false;
//       }
//     } catch (error) {
//       print(error);
//     }
//   }

//   bool isTokenErrorMessage(String msg) {
//     return msg == 'Token has expired' ||
//         msg == 'Logged out due to inactivity!' ||
//         msg == 'The token has been blacklisted';
//   }

//   Future<void> saveData(String key, String value) async {
//     // Implement your saving data functionality
//   }

//   Future<String?> getData(String key) async {
//     // Implement your getting data functionality
//     return null;
//   }

//   Future<void> deleteData(String key) async {
//     // Implement your deleting data functionality
//   }

//   Future<void> _updateExpireTimestamp(dynamic res) async {
//     // Implement your update expire timestamp functionality
//   }
// }
