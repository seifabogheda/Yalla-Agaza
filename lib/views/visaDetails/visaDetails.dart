part of 'visaDetailsImports.dart';

class VisaDetails extends StatefulWidget {
  @override
  _VisaDetailsState createState() => _VisaDetailsState();
}

class _VisaDetailsState extends State<VisaDetails> {
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
              onTap: ()=> ExtendedNavigator.root.pop(Routes.visaDetailsAddress),
              child: Container(
                margin:const  EdgeInsets.symmetric(horizontal: 25,vertical: 25),
                child: Icon(Icons.arrow_back_ios,color: Color(0xff3389EE),),
              ),
            ),
          ),
          Center(
            child: myText(
              text: 'Payment',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              size: 20,
            ),
          ),
          screenSize.width < 380 ?
          Container(
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            height: MediaQuery.of(context).size.height*.55,
            width:MediaQuery.of(context).size.width*.5 ,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Form(
              child: ListView(
                children: [
                  _buildTextField(textInputType: TextInputType.text,label: 'Name on Card'),
                  _buildTextField(textInputType: TextInputType.text,label: 'Card Number'),
                  _buildTextField(textInputType: TextInputType.text,label: 'Expiry Date'),
                  _buildTextField(textInputType: TextInputType.text,label: 'CVV'),
                ],
              ),
            ),
          ):
          Container(
            margin: EdgeInsets.only(top: screenSize.height*.13,left: 20,right: 20),
            height: MediaQuery.of(context).size.height*.45,
            width:MediaQuery.of(context).size.width*.5 ,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Form(
              child: ListView(
                children: [
                  _buildTextField(textInputType: TextInputType.text,label: 'Name on Card'),
                  _buildTextField(textInputType: TextInputType.text,label: 'Card Number'),
                  _buildTextField(textInputType: TextInputType.text,label: 'Expiry Date'),
                  _buildTextField(textInputType: TextInputType.text,label: 'CVV'),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          ExtendedNavigator.root.push(Routes.congratulations);
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
