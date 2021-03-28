part of 'forgetImports.dart';

class ForgetData{
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
   _submit(BuildContext context){
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();
    if(isValid){
      _formKey.currentState.save();
     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => NewPassword())
      );
    }

  }
}