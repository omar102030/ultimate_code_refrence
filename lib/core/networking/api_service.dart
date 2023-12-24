import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ultimate_code_refrence/core/networking/api_constants.dart';
import 'package:ultimate_code_refrence/features/login/data/models/login_request_body.dart';
import 'package:ultimate_code_refrence/features/login/data/models/login_response.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
