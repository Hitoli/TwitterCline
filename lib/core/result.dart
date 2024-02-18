import 'package:appwrite/appwrite.dart';
import 'package:twitter_clone/core/core.dart';

class Result{
  final Failure? fail;
  final Account? acc;
  Result(this.acc,this.fail);
}