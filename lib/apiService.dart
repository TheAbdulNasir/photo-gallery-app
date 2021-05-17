import 'dart:convert';
import 'dart:io';

import 'package:mobile_100asa/view_models/customer.dart';
import 'package:mobile_100asa/config.dart';
import 'package:dio/dio.dart';
import 'package:mobile_100asa/view_models/login_model.dart';

class APIService {
  Future<bool> createCustomer(CustomerModel model) async {
    // var authToken =
    // base64.encode(utf8.encode(Config.key + ":" + Config.secret));
    //
    bool ret = false;

    try {
      var response = await Dio().post(Config.url + Config.registerURL,
          data: model.toJson(),
          options: new Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json"
          }));

      if (response.statusCode == 200) {
        ret = true;
        print("Success");
      }
    } on DioError catch (e) {
      if (e.response.statusCode == 404) {
        ret = false;
        print("false");
      } else {
        ret = false;
        print("false");
      }
    }
    return ret;
  }

  Future<LoginResponseModel> loginCustomer(String email, String password) async {
    LoginResponseModel model;

    try {
      var response = await Dio().post(
          Config.url + Config.loginURL,
          data: {
            "email": email,
            "password": password,
          },
          options: new Options(
              headers: {
                HttpHeaders
                    .contentTypeHeader: "application/json",
              }
          )
      );

      if (response.statusCode == 200) {
        model = LoginResponseModel.fromJson(response.data);
        print("Sucess");
      }
    } on DioError catch (e) {
      print(e.response);
      print("Error");
    }

    return model;
  }

  Future<LoginResponseModel> loginWithGoogle(String provider, String accessToken) async {
    LoginResponseModel model;

    try {
      var response = await Dio().post(
          Config.url + Config.loginWithGoogleURL,
          data: {
            "provider": provider,
            "token": accessToken,
          },
          options: new Options(
              headers: {
                HttpHeaders
                    .contentTypeHeader: "application/json",
              }
          )
      );

      if (response.statusCode == 200) {
        model = LoginResponseModel.fromJson(response.data);
        print("Sucess");
      }
    } on DioError catch (e) {
      print(e.response);
      print("Error");
    }

    return model;
  }
}
