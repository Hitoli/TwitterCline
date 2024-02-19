import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:twitter_clone/core/core.dart';

class Result{
  final Failure? fail;
  final Account? acc;
  final Session? session;
  Result(this.acc,this.fail, this.session);
}