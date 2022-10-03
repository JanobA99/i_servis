// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uBarber_apis.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$AuthService extends AuthService {
  _$AuthService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AuthService;

  @override
  Future<Response<SuccessResponseModel>> verify(
      String phoneNumber, String code) {
    final $url = '/api/verify/${phoneNumber}/${code}/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SuccessResponseModel, SuccessResponseModel>($request);
  }

  @override
  Future<Response<SignUpResponseModel>> signUpBarber(BarberSignUpModel body) {
    final $url = '/api/barbers/register/';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<SignUpResponseModel, SignUpResponseModel>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ImageUploadService extends ImageUploadService {
  _$ImageUploadService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ImageUploadService;

  @override
  Future<Response<ImageUploadResponseModel>> imageUpload(
      String objectType, String file) {
    final $url = '/api/media/upload-file/';
    final $headers = {
      'object-type': objectType,
    };

    final $parts = <PartValue>[PartValueFile<String>('file', file)];
    final $request = Request('POST', $url, client.baseUrl,
        parts: $parts, multipart: true, headers: $headers);
    return client
        .send<ImageUploadResponseModel, ImageUploadResponseModel>($request);
  }
}
