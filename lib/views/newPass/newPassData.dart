part  of 'newPassImports.dart';

class NewPasswordData{
  final _formKey = GlobalKey<FormState>();
  final _codeController = TextEditingController();
  final _newPasswordController = TextEditingController();
  void _submit(BuildContext context) {
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      _formKey.currentState.save();
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => Search()));
    }
  }
}