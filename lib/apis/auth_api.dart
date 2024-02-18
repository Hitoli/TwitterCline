import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:twitter_clone/core/core.dart';

abstract class IAuthApi{
  Future<Result>signUp({
    required String email,
    required String password
  });
}

class AuthApi implements IAuthApi{

  // Trying not to expose private variable from this class
  final Account _account;
  AuthApi({required Account account}):_account=account;

  @override
  Future<Result> signUp({
    required String email,
    required String password
  }) async {
    try {
      final account = await _account.create(userId: ID.unique(), email: email, password: password);
      return Result(_account, null); 
    }on AppwriteException catch(e,stackTrace){
      return Result(null, Failure(e.toString()?? "Some Unexpected Error Occured",stackTrace));
    } catch (e,stackTrace) {
      return Result(null, Failure(e.toString(), stackTrace));
    }
  }
  

}