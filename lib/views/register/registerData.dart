part of 'registerImports.dart';

class RegisterData{
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final   _passwordConfirmedController = TextEditingController();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  bool _isHiddenPass = true;
  bool _isHiddenPass2 = true;

  void _submit(BuildContext context){
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();
    if(isValid){
      _formKey.currentState.save();
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Search()));
    }

  }
  // String validatePhone({@required String value,String message}){
  //   if(value.trim().isEmpty){
  //     return message??"fill field";
  //   }else if(!RegExp(r'(^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)').hasMatch(value)||value.length<10){
  //     return message??"password does not match";
  //   }
  //   return null;
  // }
  String validatePasswordConfirm({@required String confirm,@required String pass,String message}){
    if(confirm.trim().isEmpty){
      return message??"fill field";
    }else if(confirm!=pass){
      return message??"password does not match";
    }
    return null;
  }
}