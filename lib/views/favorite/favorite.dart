part  of 'favoriteImports.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> with FavoriteData {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3389EE),
        title: Text('Favorite',style: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: ListView.builder(itemCount: 15,itemBuilder: (context, i){
        return Container(
            width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 5),
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  height: 100,
                  width: 100,
                  child: Image.asset(Res.sea,fit: BoxFit.fill,),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.32,
                  child: myText(
                    color: Colors.grey,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.normal,
                    font: 'Lato',
                    size: 13,
                    text: 'Ssdsdisfhdklffhfhfhfhfhffhfhfhffhfdfa7adfudhgfdgfg;hglgg',
                    max: 2
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      buildButton(
                        width: 100,
                        context: context,
                        title: 'Details',
                      //  onTap:
                      ),
                      buildButton(
                        width: 100,
                        context: context,
                       child: Icon(Icons.delete_outline,color: Colors.white
                         ,)
                        //  onTap:
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },),
    );
  }
}
