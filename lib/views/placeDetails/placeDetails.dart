part of 'placeDetailsImports.dart';

class PlaceDetails extends StatefulWidget {
  @override
  _PlaceDetailsState createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Res.sea),fit: BoxFit.fill
                  ),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: ()=> ExtendedNavigator.root.push(Routes.home),
                    child: Container(
                      margin:const  EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                      child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.66,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //----The Apartment------
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: myText(
                          text: 'The Apartment',
                          size: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          font: 'Lato'
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                      ),
                    ),
                    //------Location------
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 15,right: 5),
                            child: Icon(Icons.location_on_outlined,size: 15,)),
                        Container(
                          child: myText(
                              text: '300 Broadway , Albany, New York 12207',
                              size: 15,
                              color: Colors.grey,
                              font: 'Lato'
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    //------Details-----
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: myText(
                            text: 'Details',
                            size: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            font: 'Lato'
                        ),
                        margin: const EdgeInsets.only(left: 15,top: 15),
                      ),
                    ),
                    //-----Details Body-----
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: MediaQuery.of(context).size.width*.9,
                        child: myText(
                            text: 'Dating back to 1924, this landmark art-deco hotel is less than a block from Grand Central Station and a mile from Central Park. Elegant rooms come with Wi-Fi,'
                                ' flat-screen TVs and iPhone docks,'
                                ' plus sitting areas and work desks.'
                                ' Luxe 1-bedroom suites add separate living rooms; some also provide kitchens.',
                            size: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            font: 'Lato',
                          overflow: TextOverflow.ellipsis,
                          max: 12,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      ),
                    ),
                    //-------Amenities------
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: myText(
                            text: 'Amenities',
                            size: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            font: 'Lato'
                        ),
                        margin: const EdgeInsets.only(left: 15,top: 20),
                      ),
                    ),
                    //------Amenities Body------
                    Container(
                      height: 80,
                      margin: EdgeInsets.only(bottom: 10),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                         setImage(image: Res.wifi,text: 'Free Wifi'),
                         setImage(image: Res.AC,text: 'AC'),
                         setImage(image: Res.damals,text: 'GYM'),
                         setImage(image: Res.Pool,text: 'Pool'),
                         setImage(image: Res.cheers,text: 'BAR'),
                         setImage(image: Res.TV,text: 'TV'),
                         setImage(image: Res.car,text: 'Parking'),
                        ],
                      ),
                    ),
                    //------Price&Reviews-------
                    Container(
                      margin: const EdgeInsets.only(left: 15,top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              myText(
                                text: 'Price',
                                size: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                font: 'Lato'
                              ),
                              myText(
                                  text: '\$250.0',
                                  size: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  font: 'Lato'
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              myText(
                                text: 'Reviews',
                                size: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                font: 'Lato'
                              ),
                              Row(

                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        myText(
                                            text: '4.7',
                                            size: 15,
                                            color: Colors.grey,

                                        ),
                                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                                        Icon(Icons.star_border,size: 15,),
                                      ],
                                    ),

                                  ),
                                  Container(
                                    child: myText(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      font: 'Lato',
                                      size: 13,
                                      text: '1400',
                                    ),
                                    margin: EdgeInsets.only(right: 20,left: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: (){
            ExtendedNavigator.root.push(Routes.bookingPlace);
          },
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
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
              child: Center(child: myText(text: 'Book Now', color: Colors.white,font: 'Montserrat',fontWeight: FontWeight.bold,size: 20))
          ),
        ),
      ),
    );
  }
}
