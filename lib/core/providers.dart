import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/constants/app_write_constats.dart';

final appWriteClientProvider = Provider((ref){
  Client client = Client();
  return client.setEndpoint(AppWriteConstants.endpointUrl).setProject(AppWriteConstants.projectID).setSelfSigned(status: true);
});

final appWriteAccountProvider=Provider((ref){
final client = ref.watch(appWriteClientProvider);
return Account(client);
});

