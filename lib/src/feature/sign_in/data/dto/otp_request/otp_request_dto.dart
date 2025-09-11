import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_request_dto.freezed.dart';
part 'otp_request_dto.g.dart';

@freezed
abstract class OtpRequest with _$OtpRequest {
  const factory OtpRequest({
    required String email,
    required String otp,
  }) = _OtpRequest;

  factory OtpRequest.fromJson(Map<String, dynamic> json) =>
      _$OtpRequestFromJson(json);
}