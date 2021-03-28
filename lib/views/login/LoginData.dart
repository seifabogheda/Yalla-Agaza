part of 'LoginImports.dart';

class LoginData {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isHiddenPass = true;

   _submit(BuildContext context){
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();
    if(isValid){
      _formKey.currentState.save();
      ExtendedNavigator.root.pushAndRemoveUntil(Routes.home, (route) => false);

    }

  }

}