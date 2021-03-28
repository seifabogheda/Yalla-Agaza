part of 'SearchImports.dart';
class Perfered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize =MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: ()=> ExtendedNavigator.root.push(Routes.home),
              child: Container(
                margin:const  EdgeInsets.only(top: 20,left: 15),
                child: Icon(Icons.arrow_back_ios,color: Colors.black,),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 35,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: myText(
                    text: 'preferred units',
                    size: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          ),
          screenSize.width<380 ?
          Container(
            height: MediaQuery.of(context).size.height-440,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: (){
                    ExtendedNavigator.root.push(Routes.placeDetails);
                  },
                  child: Container(
                    margin:  EdgeInsets.only(top: 8),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin:  EdgeInsets.only(left: 5),
                            height: 100,
                            width: 100,
                            child: Image.asset(Res.sea,fit: BoxFit.fill,),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: myText(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  font: 'Lato',
                                  size: 18,
                                  text: 'Villa',
                                ),
                                margin: EdgeInsets.only(bottom: 10,left: 5),
                              ),
                              Container(
                                child: myText(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  font: 'Lato',
                                  size: 13,
                                  text: ' 16 E 46th St, New York, NY 10017, USA',
                                ),
                                margin: EdgeInsets.only(bottom: 10,left: 5),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star_border,size: 15,),
                                            ],
                                          ),
                                          margin: EdgeInsets.symmetric(horizontal: 5),
                                        ),
                                        Container(
                                          child: myText(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            font: 'Lato',
                                            size: 13,
                                            text: '1400 Reviews',
                                          ),
                                          margin: EdgeInsets.symmetric(horizontal: 8),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: myText(
                                        color: Color(0xFF19A3FF),
                                        fontWeight: FontWeight.bold,
                                        font: 'Lato',
                                        size: 13,
                                        text: '\$180/night',
                                      ),
                                      margin: EdgeInsets.symmetric(horizontal: 5),
                                    ),
                                  ],
                                ),
                                width: MediaQuery.of(context).size.width*.69,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ):
          Container(
            height: MediaQuery.of(context).size.height-550,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: (){
                    ExtendedNavigator.root.push(Routes.placeDetails);
                  },
                  child: Container(
                    margin:  EdgeInsets.only(top: 8),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin:  EdgeInsets.only(left: 5),
                            height: 100,
                            width: 100,
                            child: Image.asset(Res.sea,fit: BoxFit.fill,),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: myText(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  font: 'Lato',
                                  size: 18,
                                  text: 'Villa',
                                ),
                                margin: EdgeInsets.only(bottom: 10,left: 5),
                              ),
                              Container(
                                child: myText(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  font: 'Lato',
                                  size: 13,
                                  text: ' 16 E 46th St, New York, NY 10017, USA',
                                ),
                                margin: EdgeInsets.only(bottom: 10,left: 5),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star_border,size: 15,),
                                            ],
                                          ),
                                          margin: EdgeInsets.symmetric(horizontal: 5),
                                        ),
                                        Container(
                                          child: myText(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            font: 'Lato',
                                            size: 13,
                                            text: '1400 Reviews',
                                          ),
                                          margin: EdgeInsets.symmetric(horizontal: 8),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: myText(
                                        color: Color(0xFF19A3FF),
                                        fontWeight: FontWeight.bold,
                                        font: 'Lato',
                                        size: 13,
                                        text: '\$180/night',
                                      ),
                                      margin: EdgeInsets.symmetric(horizontal: 5),
                                    ),
                                  ],
                                ),
                                width: MediaQuery.of(context).size.width*.69,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 35,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: myText(
                    text: 'Hurghada',
                    size: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height-200,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: (){
                    ExtendedNavigator.root.push(Routes.placeDetails);
                  },
                  child: Container(
                    margin:  EdgeInsets.only(top: 8),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin:  EdgeInsets.only(left: 5),
                            height: 100,
                            width: 100,
                            child: Image.asset(Res.sea,fit: BoxFit.fill,),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: myText(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  font: 'Lato',
                                  size: 18,
                                  text: 'Villa',
                                ),
                                margin: EdgeInsets.only(bottom: 10,left: 5),
                              ),
                              Container(
                                child: myText(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  font: 'Lato',
                                  size: 13,
                                  text: ' 16 E 46th St, New York, NY 10017, USA',
                                ),
                                margin: EdgeInsets.only(bottom: 10,left: 5),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star_border,size: 15,),
                                            ],
                                          ),
                                          margin: EdgeInsets.symmetric(horizontal: 5),
                                        ),
                                        Container(
                                          child: myText(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            font: 'Lato',
                                            size: 13,
                                            text: '1400 Reviews',
                                          ),
                                          margin: EdgeInsets.symmetric(horizontal: 8),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: myText(
                                        color: Color(0xFF19A3FF),
                                        fontWeight: FontWeight.bold,
                                        font: 'Lato',
                                        size: 13,
                                        text: '\$180/night',
                                      ),
                                      margin: EdgeInsets.symmetric(horizontal: 5),
                                    ),
                                  ],
                                ),
                                width: MediaQuery.of(context).size.width*.69,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
