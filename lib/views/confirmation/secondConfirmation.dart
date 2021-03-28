part of 'ConfirmationImports.dart';

class SecondConfirmation extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: screenSize.height*.2,
              width: screenSize.width,
              color: Color(0xFF19A3FF),
              child: Center(child: myText(text: 'Booking',color: Colors.white,fontWeight: FontWeight.bold,size: 20),),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: ()=> ExtendedNavigator.root.push(Routes.confirmation),
                child: Container(
                  margin:const  EdgeInsets.symmetric(horizontal: 25,vertical: 25),
                  child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                ),
              ),
            ),
            Positioned(
              top: screenSize.height*.2,
              child: Container(
                height: screenSize.height*.8,
                width: screenSize.width,
              ),
            ),
            screenSize.width <380 ?
            Positioned(
              top: screenSize.height*0.14,
              right: 15,
              left: 15,
              child: Center(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        shape: BoxShape.rectangle,
                        boxShadow: [BoxShadow(offset: Offset(0,1),color: Colors.black,blurRadius: 15)]
                    ),
                    height: MediaQuery.of(context).size.height*.45,
                    width: MediaQuery.of(context).size.width*.8,
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: myText(text: '\$1,800.00',size: 18,color: Colors.grey)),
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            child: myText(text: 'Transaction Success',size: 15,color: Colors.grey)),
                        Container(
                          height: MediaQuery.of(context).size.height*0.28,
                          width: MediaQuery.of(context).size.width*.6,
                          child: Image.asset(Res.sea),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            child: myText(text: 'We are happy to book your unit with us.'
                                '\n Thank you!',size: 12,color: Colors.grey)),
                      ],
                    )
                ),
              ),):
            Positioned(
              top: screenSize.height*0.14,
              right: 15,
              left: 15,
              child: Center(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        shape: BoxShape.rectangle,
                        boxShadow: [BoxShadow(offset: Offset(0,1),color: Colors.black,blurRadius: 15)]
                    ),
                    height: MediaQuery.of(context).size.height*.4,
                    width: MediaQuery.of(context).size.width*.8,
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 15),
                            child: myText(text: '\$1,800.00',size: 18,color: Colors.grey)),
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            child: myText(text: 'Transaction Success',size: 15,color: Colors.grey)),
                        Container(
                          height: MediaQuery.of(context).size.height*0.25,
                          width: MediaQuery.of(context).size.width*.7,
                          child: Image.asset(Res.sea),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            child: myText(text: 'We are happy to book your unit with us.'
                                '\n Thank you!',size: 14,color: Colors.grey)),
                      ],
                    )
                ),
              ),),
            screenSize.width <380 ?
            Positioned(
                top: screenSize.height*0.65,
                right: 15,
                left: 15,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Image.asset(Res.visa,height: 50,),
                          ),
                          Container(
                            child: myText(text: 'Visa',color: Colors.black,size: 14),
                          ),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: Icon(Icons.arrow_forward_ios_sharp)
                      ),
                    ],
                  ),
                )):
            Positioned(
                top: screenSize.height*0.62,
                right: 15,
                left: 15,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Image.asset(Res.visa,height: 70,),
                          ),
                          Container(
                            child: myText(text: 'Visa',color: Colors.black,size: 17),
                          ),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: Icon(Icons.arrow_forward_ios_sharp)
                      ),
                    ],
                  ),
                )),
            screenSize.width <380 ?
            Positioned(
                top: screenSize.height*0.75,
                right: 15,
                left: 15,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Image.asset(Res.master,height: 50,),
                          ),
                          Container(
                            child: myText(text: 'Master Card',color: Colors.black,size: 14),
                          ),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: Icon(Icons.arrow_forward_ios_sharp)
                      ),
                    ],
                  ),
                )):
            Positioned(
                top: screenSize.height*0.73,
                right: 15,
                left: 15,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Image.asset(Res.master,height: 70,),
                          ),
                          Container(
                            child: myText(text: 'Master Card',color: Colors.black,size: 17),
                          ),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: Icon(Icons.arrow_forward_ios_sharp)
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
