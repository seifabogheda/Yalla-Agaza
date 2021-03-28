part of 'filteringImports.dart';

class Filtering extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize= MediaQuery.of(context).size;
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
                      child: Text('what are you looking for?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
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
          screenSize.width <380 ?
          GestureDetector(
            onTap: ()=> ExtendedNavigator.root.push(Routes.selectDays),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
              height: MediaQuery.of(context).size.height*.15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black,width: 1)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        myText(
                          text: 'Find a Place to stay',
                          color: Colors.grey,
                          size: 20,
                          fontWeight: FontWeight.bold
                        ),
                        myText(
                          text: 'Entire homes,rooms&more',
                          color: Colors.grey,
                          size: 15
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right:4 ),
                    height: 90,
                      width: 100,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage(Res.sea),fit: BoxFit.cover),
                      )
                  ),

                ],
              ),
            ),
          ):
          GestureDetector(
            onTap: ()=> ExtendedNavigator.root.push(Routes.selectDays),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
              height: MediaQuery.of(context).size.height*.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.black,width: 1)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        myText(
                            text: 'Find a Place to stay',
                            color: Colors.grey,
                            size: 20,
                            fontWeight: FontWeight.bold
                        ),
                        myText(
                            text: 'Entire homes,rooms&more',
                            color: Colors.grey,
                            size: 15
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(right:4 ),
                      height: 90,
                      width: 100,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage(Res.sea),fit: BoxFit.cover),
                      )
                  ),

                ],
              ),
            ),
          ),
          screenSize.width <380 ?
          GestureDetector(
            onTap: ()=> ExtendedNavigator.root.push(Routes.selectDays),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
              height: MediaQuery.of(context).size.height*.15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black,width: 1)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        myText(
                          text: 'Find a monthly stay',
                          color: Colors.grey,
                          size: 20,
                          fontWeight: FontWeight.bold
                        ),
                        myText(
                          text: 'stays for 4+ weeks',
                          color: Colors.grey,
                          size: 15
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right:4 ),
                    height: 90,
                      width: 100,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage(Res.sea),fit: BoxFit.cover),
                      )
                  ),

                ],
              ),
            ),
          ):
          GestureDetector(
            onTap: ()=> ExtendedNavigator.root.push(Routes.selectDays),

            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
              height: MediaQuery.of(context).size.height*.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.black,width: 1)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        myText(
                            text: 'Find a monthly stay',
                            color: Colors.grey,
                            size: 20,
                            fontWeight: FontWeight.bold
                        ),
                        myText(
                            text: 'stays for 4+ weeks',
                            color: Colors.grey,
                            size: 15
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(right:4 ),
                      height: 90,
                      width: 100,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage(Res.sea),fit: BoxFit.cover),
                      )
                  ),

                ],
              ),
            ),
          )
        ],
      )
    );
  }
}

