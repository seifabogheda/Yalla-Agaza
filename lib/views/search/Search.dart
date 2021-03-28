part of 'SearchImports.dart';

class Search extends StatelessWidget with SearchData {
  static final route = "/HomeView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Res.sea),
                    fit: BoxFit.cover,
                   ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top:40,bottom: 25),
                        child: IconButton(icon: Icon(Icons.notifications,color: Colors.white,size: 25,), onPressed: (){})),
                    Container(
                        margin: const EdgeInsets.only(top:40,bottom: 25),
                        child: IconButton(icon: Icon(Icons.add_road,color: Colors.white,size: 25,), onPressed: (){
                          ExtendedNavigator.root.push(Routes.filtering);
                        }))
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(30)),
                  margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Form(
                    key: _formKey,
                    child: GestureDetector(
                      onTap: (){
                      ExtendedNavigator.root.push(Routes.searchPlaces);
                      },
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _searchController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.black),
                          fillColor: Colors.white,
                          enabled:  false,
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                              const Radius.circular(30),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(30),
                            ),
                          ),
                          suffixIcon: Icon(Icons.search,color: Color(0xFF19A3FF),),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
              child:ListView(
            children: [
              Container(
                height: 90,
                // width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context,i){
                    return GestureDetector(
                      onTap: ()=>ExtendedNavigator.root.push(Routes.perfered),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            margin: EdgeInsets.only(right: 5,left: 10),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(Res.sea),fit: BoxFit.fill,
                                ),
                              shape: BoxShape.circle
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 12),
                            alignment: Alignment.center,
                            height: 30,
                            child: Text('Hurghada',style: TextStyle(fontSize: 12,fontFamily: 'Montserrat',fontWeight: FontWeight.bold,color: Colors.black),),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 15 ),
                alignment: Alignment.bottomLeft,
                height: 60,
                child: Text('Choose The Right Place For You',
                  style: TextStyle(fontSize: 20,fontFamily: 'Montserrat',fontWeight: FontWeight.normal,color: Colors.black),),

              ),
              SingleChildScrollView(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.spaceEvenly,
                  runSpacing: 25,
                  children: List.generate(2, (index) => Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*.2,
                          width: MediaQuery.of(context).size.width*0.37,
                          //margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(Res.sea),fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          alignment: Alignment.center,
                          height: 30,
                          child: Text('Studio',style: TextStyle(fontSize: 12,fontFamily: 'Montserrat',fontWeight: FontWeight.bold,color: Colors.black),),
                        ),
                      ],
                    ),
                  ),
                  ),
                )
              ),
            ],
          )),
        ],
      ),
    );
  }
}
