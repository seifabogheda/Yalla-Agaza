part of 'filteringImports.dart';

class SelectDays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          Padding(
            padding: const EdgeInsets.only(top:30.0),
            child: DatePicker(),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: buildButton(
              title: 'Next',
              width: MediaQuery.of(context).size.width*.7,
              context: context,
              onTap: (){
                ExtendedNavigator.root.push(Routes.numberOfPeople);
              },
            ),
          ),
        ],
      ),
    );
  }
}
