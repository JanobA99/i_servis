import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import '../models/auth/auth.dart';
import '../models/image_upload/image_upload.dart';

part 'serializer.g.dart';

@SerializersFor([
  BarberSignUpModel,
  SignUpResponseModel,
  SuccessResponseModel,
  ImageUploadResponseModel,
  ImageUploadModel,
  LoginModel,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
