import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/auth/models/services/user_service.dart';

class VerifyCodeAndLogin {
  final UserService _userService;
  VerifyCodeAndLogin(this._userService);

  Future<Either<Failure, bool>> call(bool isEmail, String code) async {
    if (isEmail)
      return await _userService.verifyEmailCode(code);
    else
      return await _userService.verifyPhoneCode(code);
  }
}
