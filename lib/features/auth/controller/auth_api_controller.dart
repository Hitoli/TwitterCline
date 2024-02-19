import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/apis/auth_api.dart';
import 'package:twitter_clone/core/utils.dart';

final authApiControllerProvider = StateNotifierProvider<AuthApiController,bool>((ref){
return AuthApiController(authApi: ref.watch(authAPIProvider));
});

class AuthApiController extends StateNotifier<bool>{
 final AuthApi _authApi; 
  
  AuthApiController({
    required AuthApi authApi
  }):_authApi=authApi, super(false);


  void signUp({
    required String email,
    required String password,
    required BuildContext context
  })async{
    state = true;
    final res= await _authApi.signUp(email: email, password: password);
    print(email);
    if(res.acc!=null){
      showSnackBar(context, "Success");
    }else{
      showSnackBar(context, "Failure ${res.fail?.message}");
    }
  }
  void logIn({
    required String email,
    required String password,
    required BuildContext context
  })async{
    state = true;
    final res= await _authApi.login(email: email, password: password);
    print(email);
    if(res.session!=null){
      showSnackBar(context, "Success");
    }else{
      showSnackBar(context, "Failure ${res.fail?.message}");
    }
  }


}