import 'package:chopper/chopper.dart';
import '../core/built_value_converter.dart';
import '../core/interceptors.dart';
import '../models/auth/auth.dart';
import '../models/image_upload/image_upload.dart';

part 'uBarber_apis.chopper.dart';

@ChopperApi(baseUrl: '/api/')
abstract class AuthService extends ChopperService {
  @Get(path: 'verify/{phone_number}/{code}/')
  Future<Response<SuccessResponseModel>> verify(
    @Path('phone_number') String phoneNumber,
    @Path('code') String code,
  );

  @Post(path: 'barbers/register/')
  Future<Response<SignUpResponseModel>> signUpBarber(
    @Body() BarberSignUpModel body,
  );

  static AuthService create() =>
      _$AuthService(_Client('http://157.241.21.225', true));
}

@ChopperApi(baseUrl: '/api/')
abstract class ImageUploadService extends ChopperService {
  @Post(path: 'media/upload-file/')
  @multipart
  Future<Response<ImageUploadResponseModel>> imageUpload(
    @Header('object-type') String objectType,
    @PartFile('file') String file,
  );

  static ImageUploadService create() =>
      _$ImageUploadService(_Client('http://157.241.21.225', true));
}

class _Client extends ChopperClient {
  _Client(String baseUrl, bool useInterceptors)
      : super(
            baseUrl: baseUrl,
            interceptors: useInterceptors
                ? [
                    HttpLoggingInterceptor(),
                    CurlInterceptor(),
                    NetworkInterceptor(),
                    BackendInterceptor(),
                  ]
                : const [],
            converter: BuiltValueConverter(),
            errorConverter: ErrorMyConverter());
}
