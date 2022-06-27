import 'package:flutter/material.dart';
import 'package:pumpmonitoring/ui/widget/login_email_form_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmailSignInForm.create(context),
    );
  }
}
