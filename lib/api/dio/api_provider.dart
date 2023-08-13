import 'package:dio/dio.dart';

import '../model/success_story_model.dart';

class ApiProvider {
  final String baseUrl = "http://159.89.4.181:2000/api/v1";
  final int limit = 150;

  SuccessStories? successStories;

  Future<SuccessStories?> getStoreis() async {
    // try {} catch (e) {}
    try {
      Response response =
          await Dio().get("$baseUrl/success-stories?limit=$limit");

      // you must make initState Function

      // print(response.data);
      // print(response.statusCode);
      // print(response.data["model"][0]["title"]);

      successStories = SuccessStories.fromJson(response.data);

      print(successStories!.statusCode);
      print(successStories!.model![0].title);
    } catch (e) {
      print(e);
    }
    return successStories;
  }

  signInEmail({required String email, required String password}) async {
    try {
      FormData formData =
          FormData.fromMap({"email": email, "password": password});
      Response response = await Dio().post("$baseUrl/auth/email/signin");
      print(response.data);
    } catch (e) {
      if (e is DioException) {
        print(e.response);
      }
    }
  }
}
