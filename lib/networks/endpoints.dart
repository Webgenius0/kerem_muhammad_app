// ignore_for_file: constant_identifier_names

// const String url = String.fromEnvironment("BASE_URL");
const String url = "https://sureshdhriti.thewarriors.team/api";

final class NetworkConstants {
  NetworkConstants._();
  static const ACCEPT = "Accept";
  static const APP_KEY = "App-Key";
  static const ACCEPT_LANGUAGE = "Accept-Language";
  static const ACCEPT_LANGUAGE_VALUE = "pt";
  static const APP_KEY_VALUE = String.fromEnvironment("APP_KEY_VALUE");
  static const ACCEPT_TYPE = "application/json";
  static const AUTHORIZATION = "Authorization";
  static const CONTENT_TYPE = "content-Type";
}

final class Endpoints {
  Endpoints._();
  //backend_url

  static String register() => "/auth/register";
  static String verifyOtp() => "/auth/verify-otp";
  static String resendVerifyOtp() => "/auth/resend-otp";
  static String logIn() => "/auth/login";
  static String forgotPasswrd() => "/auth/forgot-password";
  static String changePassword() => "/auth/reset-password";
  static String logOut() => "/auth/logout";
  static String deleteAccount() => "/security/delete-account";
  static String profilePhoto() => "/profile/photo";
  static String getProfile() => "/profile";
  static String updateProfile() => "/profile/update";
  static String userUpdatePassword() => "/security/change-password";
  static String getPrivacyPolicy() => "/page/3";
  static String getTermsCondition() => "/page/4";
  static String notificationsToggle() => "/notifications/toggle";
  static String getRommates() => "/roommates";
  static String getNotificationsList() => "/notifications";
  static String matchRequestSend() => "/match/send";
  static String getChatList() => "/chat/list";
  static String getChatMessages({required int userId}) =>
      "/chat/$userId/messages?items=20";
  static String sendMessages() => "/message/send-by-user";
  static String getRommatesDetails({required int id}) => "/roommates/$id";

  // static String singleEvent({required int id}) => "/api/event/single/$id";
  // static String relatedEvent({required int id}) => "/api/event/related/$id";
  // static String filterEvents({String? time, String? gameId}) =>
  //     "/api/event/filter?time=${time ?? ""}&$gameId";
  // static String searchEvents({String? location, String? date, String? title}) =>
  //     "/api/event/search?location=$location&date=$date&title=$title";
}
