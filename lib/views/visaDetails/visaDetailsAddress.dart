part of 'visaDetailsImports.dart';

class VisaDetailsAddress extends StatefulWidget {
  @override
  _VisaDetailsAddressState createState() => _VisaDetailsAddressState();
}

class _VisaDetailsAddressState extends State<VisaDetailsAddress> {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: ()=> ExtendedNavigator.root.pop(Routes.secondConfirmation),
              child: Container(
                margin:const  EdgeInsets.symmetric(horizontal: 25,vertical: 25),
                child: Icon(Icons.arrow_back_ios,color: Color(0xff3389EE),),
              ),
            ),
          ),
          Center(
            child: myText(
              text: 'Address',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              size: 20,
            ),
          ),
          screenSize.width <380 ?
          Container(
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            height: MediaQuery.of(context).size.height*.6,
          width:MediaQuery.of(context).size.width*.5 ,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Form(
              child: ListView(
                children: [
                  _buildTextField(textInputType: TextInputType.text,label: 'Street 1'),
                  _buildTextField(textInputType: TextInputType.text,label: 'Street 2'),
                  _buildTextField(textInputType: TextInputType.text,label: 'City'),
                  _buildTextField(textInputType: TextInputType.text,label: 'State'),
                  _buildTextField(textInputType: TextInputType.text,label: 'Country'),
                ],
              ),
            ),
          ):
          Container(
            margin: EdgeInsets.only(top:60 ,right: 20,left: 20),
            height: MediaQuery.of(context).size.height*.53,
            width:MediaQuery.of(context).size.width*.5 ,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Form(
              child: ListView(
                children: [
                  _buildTextField(textInputType: TextInputType.text,label: 'Street 1'),
                  _buildTextField(textInputType: TextInputType.text,label: 'Street 2'),
                  _buildTextField(textInputType: TextInputType.text,label: 'City'),
                  _buildTextField(textInputType: TextInputType.text,label: 'State'),
                  _buildTextField(textInputType: TextInputType.text,label: 'Country'),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          ExtendedNavigator.root.push(Routes.visaDetails);
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xff00EEFF),
                  Color(0xFF19A3FF),
                ]),
          ),
          child: Center(child: myText(text: 'Next',size: 20,fontWeight: FontWeight.bold,color: Colors.white)),
        ),
      ),
    );
  }
}

Widget _buildTextField(
    {
      TextEditingController controller,
      String label,
      TextInputType textInputType,
      Function validate}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    child: TextFormField(
      validator: validate,
      keyboardType: textInputType,
      controller: controller,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: label,
      ),
    ),
  );
}
