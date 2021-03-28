part of 'visaDetailsImports.dart';

class Congratulations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Booking',style: TextStyle(color: Colors.black,fontFamily: 'Lato',fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        shadowColor: Colors.black45,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.1,),
            child: Image.asset(Res.congrat),
          ),
          Padding(
            padding: const EdgeInsets.only(top:35.0),
            child: myText(
              text: 'Congratulations!',
              size: 42,
              fontWeight: FontWeight.normal,
              font: 'Lato'
            ),
          ),Padding(
            padding: const EdgeInsets.only(top:5.0),
            child: myText(
                text: 'Your booking has been confirmed',
                size: 18,
                fontWeight: FontWeight.normal,
                font: 'Lato'
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:35.0),
            child: buildButton(
              context: context,
              title: 'Go Back to home',
              onTap: ()=> ExtendedNavigator.root.push(Routes.home),
              width: MediaQuery.of(context).size.width*.65
            ),
          ),
        ],
      ),
    );
  }
}
