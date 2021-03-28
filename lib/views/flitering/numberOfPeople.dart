part of 'filteringImports.dart';

class NumberOfPeople extends StatefulWidget {
  @override
  _NumberOfPeopleState createState() => _NumberOfPeopleState();
}

class _NumberOfPeopleState extends State<NumberOfPeople> {
  @override
  Widget build(BuildContext context) {
    final screenSize =MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*.3,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage(Res.sea),fit: BoxFit.cover),
                    )
                ),
                ClipRRect( // Clip it cleanly.
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                      ),
                      alignment: Alignment.center,
                      child: Text('when will you be there',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: ()=> ExtendedNavigator.root.push(Routes.home),
                    child: Container(
                      margin:const  EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                      child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20
            ),
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    myText(
                      text: 'Adult',
                      size: 20,
                      color: Colors.black,
                    ),
                    myText(
                      text: '16+years',
                      size: 14,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width:30,
                        margin: EdgeInsets.only(right: 10,),
                        decoration: BoxDecoration(
                            color: Color(0xffE0E0E1),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: InkWell(
                          onTap: (){},
                          child: Center(child: Text('-',style: TextStyle(color: Colors.white),),),),
                      ),
                      myText(
                        text: '4',
                        size: 30,
                      ),
                      Container(
                        height: 30,
                        width:30,
                        margin: EdgeInsets.only(left: 10,),
                        decoration: BoxDecoration(
                            color: Color(0xff19A3FF),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: InkWell(
                          onTap: (){},
                          child: Center(child: Text('+',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.only(
                top: 50,
                left: 20,
                right: 20
            ),
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    myText(
                      text: 'Children',
                      size: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width:30,
                        margin: EdgeInsets.only(right: 10,),
                        decoration: BoxDecoration(
                            color: Color(0xffE0E0E1),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: InkWell(
                          onTap: (){},
                          child: Center(child: Text('-',style: TextStyle(color: Colors.white),),),),
                      ),
                      myText(
                        text: '4',
                        size: 30,
                      ),
                      Container(
                        height: 30,
                        width:30,
                        margin: EdgeInsets.only(left: 10,),
                        decoration: BoxDecoration(
                            color: Color(0xff19A3FF),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: InkWell(
                          onTap: (){},
                          child: Center(child: Text('+',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.only(
                top: 50,
                left: 20,
                right: 20
            ),
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    myText(
                      text: 'Infants',
                      size: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width:30,
                        margin: EdgeInsets.only(right: 10,),
                        decoration: BoxDecoration(
                            color: Color(0xffE0E0E1),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: InkWell(
                          onTap: (){},
                          child: Center(child: Text('-',style: TextStyle(color: Colors.white),),),),
                      ),
                      myText(
                        text: '4',
                        size: 30,
                      ),
                      Container(
                        height: 30,
                        width:30,
                        margin: EdgeInsets.only(left: 10,),
                        decoration: BoxDecoration(
                            color: Color(0xff19A3FF),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: InkWell(
                          onTap: (){},
                          child: Center(child: Text('+',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
      bottomNavigationBar: screenSize.width <380 ?
      GestureDetector(
        onTap: (){
          ExtendedNavigator.root.push(Routes.bookingPlace);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
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
            child: Center(child: myText(text: 'Next', color: Colors.white,font: 'Montserrat',fontWeight: FontWeight.bold,size: 20))
        ),
      ):
      GestureDetector(
        onTap: (){
          ExtendedNavigator.root.push(Routes.bookingPlace);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30,vertical: 65),
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
            child: Center(child: myText(text: 'Next', color: Colors.white,font: 'Montserrat',fontWeight: FontWeight.bold,size: 20))
        ),
      )
    );
  }
}
