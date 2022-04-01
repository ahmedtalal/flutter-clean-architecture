abstract class AuthRepository {
  dynamic login(var model);
  dynamic register(var model);
  dynamic logOut();
  dynamic forgetPassowrd(String email);
  dynamic updatePassword(String newPassword);
}
