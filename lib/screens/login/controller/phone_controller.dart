import 'package:consultant_app/screens/login/views/OTP.dart';
import 'package:flutter/cupertino.dart';

import '../../home/home.dart';

class PhoneProvider extends ChangeNotifier {

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

  otpTap(BuildContext context) async {
    Navigator.of(context).pushNamedAndRemoveUntil(OTPScreen.routeName, (route) => false);

  }
}