part of 'searchPlacesImports.dart';

class SearchPlaces extends StatefulWidget {
  @override
  _SearchPlacesState createState() => _SearchPlacesState();
}

class _SearchPlacesState extends State<SearchPlaces> with SearchPlacesData {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: false,
            children: [
              GestureDetector(
                onTap: ()=>ExtendedNavigator.root.pop(Routes.home),
                child: Container(
                  height: 20,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFF19A3FF),
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.05,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _searchController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.blue),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Color(0xFF19A3FF), width: 2.0),
                        borderRadius: BorderRadius.all(
                          const Radius.circular(30),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30),
                        ),
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF19A3FF),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 35,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
