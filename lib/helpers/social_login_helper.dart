// // ignore_for_file: unnecessary_brace_in_string_interps

// import 'dart:developer';
// import 'dart:io';

// import 'package:elinabell_app/helpers/all_routes.dart';
// import 'package:elinabell_app/helpers/navigation_service.dart';
// import 'package:elinabell_app/networks/api_access.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:sign_in_with_apple/sign_in_with_apple.dart';

// import '../helpers/toast.dart'; // Ensure toast notifications are available

// class SocialLoginHelper {
//   static final SocialLoginHelper _singleton = SocialLoginHelper._internal();
//   SocialLoginHelper._internal();
//   static SocialLoginHelper get instance => _singleton;
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn googleSignIn = GoogleSignIn();

//   // GOOGLE Login Function__________________

//   Future<bool> signInWithGoogle(BuildContext context) async {
//     try {
//       // Ensure Internet is available
//       final result = await InternetAddress.lookup('google.com');
//       if (result.isEmpty || result[0].rawAddress.isEmpty) {
//         throw Exception("No Internet Connection");
//       }

//       // Start Google Sign-In process
//       final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
//       if (googleUser == null) {
//         throw Exception("Google Sign-In Cancelled");
//       }

//       final GoogleSignInAuthentication googleAuth =
//           await googleUser.authentication;

//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );

//       // Authenticate with Firebase
//       final UserCredential userCredential =
//           await _auth.signInWithCredential(credential);
//       final User? user = userCredential.user;

//       if (user != null) {
//         log("Google Sign-In Successful: ${user.email}");
//         log("++++++++++++++++++++++++++++++++++++++++++${googleAuth.accessToken}");
//         // Call server API
//         return await socialLoginRXObj.socialLoginFunc(
//           token: googleAuth.accessToken!,
//           provider: "google",
//         );
//       } else {
//         return false;
//       }
//     } catch (error) {
//       ToastUtil.showLongToast("Google Sign-In Failed: ${error.toString()}");
//       log("Google Sign-In Error: $error");
//       return false;
//     }
//   }

// //  _________________________APPLE Login Function__________________
//   Future<UserCredential?> signInWithApple(BuildContext context) async {
//     try {
//       final appleCredential = await SignInWithApple.getAppleIDCredential(
//         scopes: [
//           AppleIDAuthorizationScopes.email,
//           AppleIDAuthorizationScopes.fullName,
//         ],
//       );

//       // Create an OAuth credential from Apple
//       final oauthCredential = OAuthProvider("apple.com").credential(
//         idToken: appleCredential.identityToken,
//         accessToken: appleCredential.authorizationCode,
//       );

//       // Print tokens
//       debugPrint("🆔 ID Token: ${appleCredential.identityToken}");
//       debugPrint("🔑 Authorization Code: ${appleCredential.authorizationCode}");

//       // Sign in with Firebase
//       final userCredential = await _auth.signInWithCredential(oauthCredential);

//       // Get user details
//       final user = userCredential.user;

//       if (user != null) {
//         String? displayName = appleCredential.givenName != null
//             ? "${appleCredential.givenName} ${appleCredential.familyName}"
//             : user.displayName;
//         String? email = appleCredential.email ?? user.email;

//         debugPrint("✅ Apple Login Success:");
//         debugPrint("👤 Display Name: $displayName");
//         debugPrint("📧 Email: $email");
//         debugPrint("🆔 UID: ${user.uid}");
//         debugPrint("🖼️ Photo URL: ${user.photoURL}");
//         log('auth user not null ');

//         await socialLoginRXObj.socialLoginFunc(
//           token: appleCredential.identityToken.toString(),
//           provider: "apple",
//         );
//         NavigationService.navigateToReplacement(Routes.bottomNavigation);
//         ToastUtil.showLongToast('Login Successfully');
//       }
//       return userCredential;
//     } catch (e) {
//       debugPrint("❌ Apple Sign-In Error: $e");
//       return null;
//     }
//   }
// }
