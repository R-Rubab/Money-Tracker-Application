
import '../core/export_files/export_files.dart';

class AppRoutes {
  static GetPage<dynamic> routes(String name, Widget page,
      {Transition transition = Transition.rightToLeft}) {
    return GetPage(
      name: name,
      page: () => page,
      transition: transition,
      // curve: Curves.easeIn,
      transitionDuration: const Duration(milliseconds: 500),
    );
  }

  static appRoutes() => [
        // routes(RoutesName.splashView, const SplashView()),
        // routes(RoutesName.onBoardingView, const OnBoardingView()),
        // routes(RoutesName.onBoard1, const OnBoard1()),
        // routes(RoutesName.onBoard2, const OnBoard2()),
        // routes(RoutesName.onBoard3, const OnBoard3()),
        // routes(RoutesName.loginSignUp, const LoginSignUp()),
        // routes(RoutesName.loginView, const LoginView()),
        // routes(RoutesName.forgetView, const ForgotPasswordView()),
        // routes(RoutesName.phoneView, const PhoneView()),
        // routes(RoutesName.signUpView, const SignUpView()),
        // routes(RoutesName.signUpScreen, const SignupScreen()),
        // routes(RoutesName.profileView, const ProfileView()),
        // routes(RoutesName.verificationCodeView, const VerificationCodeView()),
        // routes(RoutesName.scheduleView, const ScheduleView()),
        // routes(RoutesName.homeView, const HomeView()),
    
      ];
}
