part of 'bookingPlaceImports.dart';

class BookingPlaceData{
  final _formKey = GlobalKey<FormState>();
  final _adultsController = TextEditingController();
  final _childrenController = TextEditingController();
  bool dateValue = false;

  void _submit(BuildContext context){
    // final isValid = _formKey.currentState.validate();
    // FocusScope.of(context).unfocus();
    // if(isValid){
    //   _formKey.currentState.save();
    //   print('seif');
    //   ExtendedNavigator.root.push(Routes.home);
    // }
    ExtendedNavigator.root.push(Routes.confirmation);

  }
}