part of 'bookingPlaceImports.dart';

class BookingPlace extends StatefulWidget {
  @override
  _BookingPlaceState createState() => _BookingPlaceState();
}

class _BookingPlaceState extends State<BookingPlace>with BookingPlaceData {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: Stack(
         children: [
           Container(
             height: MediaQuery.of(context).size.height*.2,
             width: MediaQuery.of(context).size.width,
             color: Color(0xFF19A3FF),
             child: Center(child: myText(text: 'Booking',color: Colors.white,fontWeight: FontWeight.bold,size: 20),),
           ),
           Align(
             alignment: Alignment.topLeft,
             child: GestureDetector(
                onTap: ()=> ExtendedNavigator.root.pop(Routes.placeDetails),
               child: Container(
                 margin:const  EdgeInsets.symmetric(horizontal: 25,vertical: 25),
                 child: Icon(Icons.arrow_back_ios,color: Colors.white,),
               ),
             ),
           ),
           Positioned(
             top: MediaQuery.of(context).size.height*.2,
             child: Container(
               height: MediaQuery.of(context).size.height*.8,
               width: MediaQuery.of(context).size.width,
             ),
           ),
           Positioned(
               top: MediaQuery.of(context).size.height*.5,
               right: 15,
               left: 15,
               child:DetailsBooking()
           ),
           Positioned(
               top: MediaQuery.of(context).size.height*0.14,
               right: 15,
               left: 15,
               child: DatePicker()),
         ],
       ),
        bottomNavigationBar: GestureDetector(
          onTap: (){
           _submit(context);
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
      ),
    );
  }
}
