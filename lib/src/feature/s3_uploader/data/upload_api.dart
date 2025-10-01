import 'dart:io';
import 'package:dio/dio.dart';
import 'package:trader_gpt/src/shared/flavours.dart';

class UploadApi {
  final Dio dio;

  UploadApi({Dio? dio}) : dio = dio ?? Dio();

  /// Get presigned S3 URL
  Future<Map<String, dynamic>> getPresignedUrl(String fileName) async {
    final response = await dio.get(
      "${BaseUrl.baseUrl}tgpt-nestjs/s3",
      // 'https://stage.tradersgpt.io/tgpt-nestjs/s3',
      queryParameters: {'fileName': fileName},
    );
    return response.data;
  }

  /// Upload file directly to S3 using presigned URL
  Future<void> uploadToS3({
    required File file,
    required String uploadUrl,
    required String contentType,
  }) async {
    final bytes = await file.readAsBytes();
    await dio.put(
      uploadUrl,
      data: bytes,
      options: Options(headers: {'Content-Type': contentType}),
    );
  }
}
